import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_contacts/flutter_contacts.dart' as fc;
import 'package:http/http.dart' as http;
import 'package:matrix/matrix.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:stawi/config/setting_keys.dart';

class _ContactsStorageHandler {
  static CachedProfileInformation toProfileInformation(fc.Contact c) {
    final localProfileId = 'local_id_${c.id}';

    final contactDetails = c.phones
        .map((p) => ProfileContact(detail: p.normalizedNumber))
        .toList(growable: true);
    contactDetails.addAll(
      c.emails.map((e) => ProfileContact(detail: e.address)),
    );

    final extras = <String, String>{
      localProfileIdPrefix: c.id,
      'name_first': c.name.first,
      'name_middle': c.name.middle,
      'name_last': c.name.last,
      'name_prefix': c.name.prefix,
      'name_suffix': c.name.suffix,
      'nickname': c.name.nickname,
      'org': c.organizations.map((o) => o.toString()).toSet().join(" "),
    };

    return CachedProfileInformation.fromProfile(
      Profile(
        profileId: localProfileId,
        displayName: c.displayName,
        contacts: contactDetails,
        extra: extras,
      ),
      outdated: false,
      updated: DateTime.now(),
    );
  }

  static Future<Uint8List?> fetchThumbnailByContactId(String contactId) async {
    final contact = await fc.FlutterContacts.getContact(
      contactId,
      withProperties: true,
      withThumbnail: true,
      withPhoto: true,
    );

    return contact?.photoOrThumbnail;
  }

  static Future<List<CachedProfileInformation>> fetchAllRawContacts() async {
    Logs().i('Obtaining all available raw contacts');

    final contacts = await fc.FlutterContacts.getContacts(
      withProperties: true,
      withThumbnail: false,
      withPhoto: false,
    );
    return contacts.map(toProfileInformation).toList();
  }

  static Future<List<CachedProfileInformation>> searchProfiles(
    Client client, {
    List<String>? extraKeys,
    String? queryFilter,
  }) async {
    if (client.database == null) {
      return List.empty();
    }

    return await client.database!.filterUserProfiles(
      query: queryFilter,
      extraKeys: extraKeys,
    );
  }

  static Future<CachedProfileInformation?> fetchProfileById(
    Client client,
    String profileId,
  ) async {
    if (client.database == null) {
      return null;
    }

    return await client.database!.getUserProfile(profileId);
  }

  static Future<void> saveContact(
    Client client,
    CachedProfileInformation profile,
  ) async {
    if (profile.profileId == null || profile.profileId!.isEmpty) {
      return;
    }

    await client.database?.storeUserProfile(profile.profileId!, profile);
  }

  static bool canSkipFullPhonebookSync(SharedPreferences store) {
    final lastSyncDateTimeStr = store.getString(
      SettingKeys.lastFullContactSyncDateTime,
    );
    if (lastSyncDateTimeStr == null) {
      return false;
    }

    final lastSyncDateTime = DateTime.parse(lastSyncDateTimeStr);
    return lastSyncDateTime.isAfter(
      DateTime.now().subtract(const Duration(days: 1)),
    );
  }

  static void markFullPhonebookSyncDateTime(SharedPreferences store) {
    store.setString(
      SettingKeys.lastFullContactSyncDateTime,
      DateTime.now().toIso8601String(),
    );
  }
}

class ContactSyncDatabaseUtility {
  static Future<void> syncContacts(Client client) async {
    final store = await SharedPreferences.getInstance();
    if (_ContactsStorageHandler.canSkipFullPhonebookSync(store)) {
      Logs().i("Skipping phonebook sync");
      return;
    }

    final rawContacts = await _ContactsStorageHandler.fetchAllRawContacts();

    for (final c in rawContacts) {
      CachedProfileInformation? existingProfile;
      var localProfileId = c.profileId ?? '';
      if (localProfileId.isNotEmpty) {
        existingProfile = await _ContactsStorageHandler.fetchProfileById(
          client,
          localProfileId,
        );
      } else {
        localProfileId = c.extra?[localProfileIdPrefix].toString() ?? '';
        if (localProfileId.isEmpty) {
          continue;
        }
        final existingProfiles = await _ContactsStorageHandler.searchProfiles(
          client,
          queryFilter: localProfileId,
          extraKeys: [localProfileIdPrefix],
        );
        existingProfile =
            existingProfiles
                .where(
                  (cp) => cp.extra?[localProfileIdPrefix] == localProfileId,
                )
                .firstOrNull;
      }

      existingProfile ??= c;

      final profileImage =
          await _ContactsStorageHandler.fetchThumbnailByContactId(
            localProfileId,
          );

      if (profileImage != null) {
        final avatarUrl = await client.uploadContent(profileImage);
        existingProfile.avatarUrl = avatarUrl;
      }

      await _ContactsStorageHandler.saveContact(client, existingProfile);
    }

    _ContactsStorageHandler.markFullPhonebookSyncDateTime(store);
    // Initiate network sync
  }
}

class ContactSyncNetworkUtility {
  static const String serverUrl = 'https://your-api.com/contacts';
  static const int maxRetries = 3;

  static Future<void> syncContacts(Client client) async {
    final phoneContacts = await _ContactsStorageHandler.searchProfiles(client);

    const batchSize = 50;
    for (var i = 0; i < phoneContacts.length; i += batchSize) {
      final batch = phoneContacts.sublist(
        i,
        i + batchSize > phoneContacts.length
            ? phoneContacts.length
            : i + batchSize,
      );

      final uploadedProfile = await uploadBatchWithRetry(client, batch);
      for (final profile in uploadedProfile) {
        await _ContactsStorageHandler.saveContact(client, profile);
      }
    }
  }

  static Future<List<CachedProfileInformation>> uploadBatchWithRetry(
    Client client,
    List<CachedProfileInformation> batch, {
    int attempt = 1,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(serverUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'contacts': batch}),
      );

      if (response.statusCode == 201) {
        return batch;
      } else {
        throw HttpException("Server error: ${response.statusCode}");
      }
    } catch (e) {
      if (attempt < maxRetries) {
        final delay =
            (2 << attempt) *
            1000; // Exponential backoff: 2000ms, 4000ms, 8000ms...
        Logs().w("Retrying batch ($attempt/$maxRetries) after ${delay}ms...");
        await Future.delayed(Duration(milliseconds: delay));
        return await uploadBatchWithRetry(client, batch, attempt: attempt + 1);
      } else {
        rethrow;
      }
    }
  }
}

class ContactSyncUtility {
  static Future<bool> checkPermissions() async {
    return await fc.FlutterContacts.requestPermission(readonly: true);
  }
}
