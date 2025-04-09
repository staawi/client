import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
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

/// Data class for contact sync progress reporting
class ContactSyncProgress {
  final int total;
  final int processed;
  final String currentAction;
  final bool isComplete;

  const ContactSyncProgress({
    required this.total,
    required this.processed,
    required this.currentAction,
    this.isComplete = false,
  });

  double get percentComplete => total > 0 ? processed / total : 0.0;

  ContactSyncProgress copyWith({
    int? total,
    int? processed,
    String? currentAction,
    bool? isComplete,
  }) {
    return ContactSyncProgress(
      total: total ?? this.total,
      processed: processed ?? this.processed,
      currentAction: currentAction ?? this.currentAction,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}

/// Message for isolate communication
class _SyncMessage {
  final Client client;
  final List<CachedProfileInformation> contacts;
  final SendPort sendPort;

  _SyncMessage(this.client, this.contacts, this.sendPort);
}

class ContactSyncDatabaseUtility {
  /// Stream controller for progress updates
  static final _progressController =
      StreamController<ContactSyncProgress>.broadcast();

  /// Stream of progress updates
  static Stream<ContactSyncProgress> get progressStream =>
      _progressController.stream;

  /// Cancel token for stopping synchronization
  static CancelToken? _cancelToken;

  /// Initialize a new sync operation
  static Future<void> syncContacts(Client client) async {
    // Create a new cancel token if needed
    _cancelToken = _cancelToken ?? CancelToken();

    if (_cancelToken!.isCancelled) {
      _cancelToken = CancelToken();
    }

    final store = await SharedPreferences.getInstance();
    if (_ContactsStorageHandler.canSkipFullPhonebookSync(store)) {
      Logs().i("Skipping phonebook sync");
      _progressController.add(
        const ContactSyncProgress(
          total: 1,
          processed: 1,
          currentAction: 'Sync already up-to-date',
          isComplete: true,
        ),
      );
      return;
    }

    // Fetch contacts on a background thread to avoid UI blocking
    _progressController.add(
      const ContactSyncProgress(
        total: 100,
        processed: 0,
        currentAction: 'Fetching contacts',
      ),
    );

    final rawContacts = await compute(_fetchContactsIsolate, null);

    if (_cancelToken!.isCancelled) return;

    _progressController.add(
      ContactSyncProgress(
        total: rawContacts.length,
        processed: 0,
        currentAction: 'Processing contacts',
      ),
    );

    // Process contacts in batches to keep UI responsive
    const batchSize = 20;
    for (var i = 0; i < rawContacts.length; i += batchSize) {
      if (_cancelToken!.isCancelled) return;

      final end =
          (i + batchSize < rawContacts.length)
              ? i + batchSize
              : rawContacts.length;

      final batch = rawContacts.sublist(i, end);

      // Create a receive port for the isolate communication
      final receivePort = ReceivePort();

      // Create the isolate and pass the data
      await Isolate.spawn(
        _processBatchIsolate,
        _SyncMessage(client, batch, receivePort.sendPort),
      );

      // Wait for the isolate to complete
      final processedBatch =
          await receivePort.first as List<CachedProfileInformation>;

      // Save the processed contacts back to the database
      for (final profile in processedBatch) {
        if (_cancelToken!.isCancelled) return;
        await _ContactsStorageHandler.saveContact(client, profile);
      }

      // Update progress
      _progressController.add(
        ContactSyncProgress(
          total: rawContacts.length,
          processed: i + batch.length,
          currentAction: 'Processing contacts',
        ),
      );
    }

    // Mark sync as complete
    _ContactsStorageHandler.markFullPhonebookSyncDateTime(store);

    _progressController.add(
      ContactSyncProgress(
        total: rawContacts.length,
        processed: rawContacts.length,
        currentAction: 'Local sync complete',
        isComplete: true,
      ),
    );
  }

  /// Cancel an ongoing sync operation
  static void cancelSync() {
    if (_cancelToken != null) {
      _cancelToken!.cancel();
      _progressController.add(
        const ContactSyncProgress(
          total: 100,
          processed: 0,
          currentAction: 'Sync cancelled',
          isComplete: true,
        ),
      );
    }
  }

  /// Process a batch of contacts in an isolate
  static Future<void> _processBatchIsolate(_SyncMessage message) async {
    final processedContacts = <CachedProfileInformation>[];

    for (final contact in message.contacts) {
      var localProfileId = contact.profileId ?? '';
      CachedProfileInformation? existingProfile;

      if (localProfileId.isNotEmpty) {
        existingProfile = await _ContactsStorageHandler.fetchProfileById(
          message.client,
          localProfileId,
        );
      } else {
        localProfileId = contact.extra?[localProfileIdPrefix].toString() ?? '';
        if (localProfileId.isEmpty) continue;

        final existingProfiles = await _ContactsStorageHandler.searchProfiles(
          message.client,
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

      existingProfile ??= contact;

      // Fetch thumbnail only if needed (e.g., if avatar is missing)
      if (existingProfile.avatarUrl == null ||
          existingProfile.avatarUrl!.toString().isEmpty) {
        final profileImage =
            await _ContactsStorageHandler.fetchThumbnailByContactId(
              localProfileId,
            );

        if (profileImage != null) {
          final avatarUrl = await message.client.uploadContent(profileImage);
          existingProfile.avatarUrl = avatarUrl;
        }
      }

      processedContacts.add(existingProfile);
    }

    // Send the processed contacts back to the main isolate
    message.sendPort.send(processedContacts);

    // Close the isolate
    Isolate.exit();
  }

  /// Fetch all contacts in an isolate
  static Future<List<CachedProfileInformation>> _fetchContactsIsolate(_) async {
    return await _ContactsStorageHandler.fetchAllRawContacts();
  }
}

class ContactSyncNetworkUtility {
  static const String serverUrl = 'https://your-api.com/contacts';
  static const int maxRetries = 3;
  static const int batchSize = 50;

  /// Stream controller for network progress updates
  static final _networkProgressController =
      StreamController<ContactSyncProgress>.broadcast();

  /// Stream of network progress updates
  static Stream<ContactSyncProgress> get networkProgressStream =>
      _networkProgressController.stream;

  /// Cancel token for stopping network synchronization
  static CancelToken? _cancelToken;

  /// Initialize network sync operation
  static Future<void> syncContacts(Client client) async {
    // Create a new cancel token if needed
    _cancelToken = _cancelToken ?? CancelToken();

    if (_cancelToken!.isCancelled) {
      _cancelToken = CancelToken();
    }

    _networkProgressController.add(
      const ContactSyncProgress(
        total: 100,
        processed: 0,
        currentAction: 'Preparing network sync',
      ),
    );

    // Fetch contacts in the background
    final receivePort = ReceivePort();
    await Isolate.spawn(
      _fetchContactsForNetworkSync,
      _SyncMessage(client, [], receivePort.sendPort),
    );

    final phoneContacts =
        await receivePort.first as List<CachedProfileInformation>;

    if (_cancelToken!.isCancelled || phoneContacts.isEmpty) {
      _networkProgressController.add(
        const ContactSyncProgress(
          total: 1,
          processed: 1,
          currentAction: 'Network sync complete',
          isComplete: true,
        ),
      );
      return;
    }

    _networkProgressController.add(
      ContactSyncProgress(
        total: phoneContacts.length,
        processed: 0,
        currentAction: 'Uploading contacts',
      ),
    );

    // Process in batches with parallel uploads (limited to 3 concurrent batches)
    final semaphore = Semaphore(3); // Limit concurrent network requests
    final futures = <Future<void>>[];

    for (var i = 0; i < phoneContacts.length; i += batchSize) {
      if (_cancelToken!.isCancelled) break;

      final end =
          (i + batchSize < phoneContacts.length)
              ? i + batchSize
              : phoneContacts.length;

      final batch = phoneContacts.sublist(i, end);

      // Use semaphore to limit concurrent network requests
      futures.add(
        semaphore.run(() async {
          if (_cancelToken!.isCancelled) return;

          final uploadedProfiles = await uploadBatchWithRetry(client, batch);

          if (_cancelToken!.isCancelled) return;

          // Save contacts in batches
          await compute(
            _saveBatchIsolate,
            _SyncMessage(client, uploadedProfiles, receivePort.sendPort),
          );

          // Update progress
          _networkProgressController.add(
            ContactSyncProgress(
              total: phoneContacts.length,
              processed: i + batch.length,
              currentAction: 'Uploading contacts',
            ),
          );
        }),
      );
    }

    // Wait for all uploads to complete
    await Future.wait(futures);

    _networkProgressController.add(
      ContactSyncProgress(
        total: phoneContacts.length,
        processed: phoneContacts.length,
        currentAction: 'Network sync complete',
        isComplete: true,
      ),
    );
  }

  /// Cancel an ongoing network sync operation
  static void cancelNetworkSync() {
    if (_cancelToken != null) {
      _cancelToken!.cancel();
      _networkProgressController.add(
        const ContactSyncProgress(
          total: 100,
          processed: 0,
          currentAction: 'Network sync cancelled',
          isComplete: true,
        ),
      );
    }
  }

  /// Fetch contacts for network sync in an isolate
  static Future<void> _fetchContactsForNetworkSync(_SyncMessage message) async {
    final phoneContacts = await _ContactsStorageHandler.searchProfiles(
      message.client,
    );
    message.sendPort.send(phoneContacts);
    Isolate.exit();
  }

  /// Save a batch of contacts in an isolate
  static Future<void> _saveBatchIsolate(_SyncMessage message) async {
    for (final profile in message.contacts) {
      await _ContactsStorageHandler.saveContact(message.client, profile);
    }
  }

  static Future<List<CachedProfileInformation>> uploadBatchWithRetry(
    Client client,
    List<CachedProfileInformation> batch, {
    int attempt = 1,
  }) async {
    try {
      // Use a timeout to prevent hanging requests
      final response = await http
          .post(
            Uri.parse(serverUrl),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'contacts': batch}),
          )
          .timeout(const Duration(seconds: 30));

      if (response.statusCode == 201) {
        return batch;
      } else {
        throw HttpException("Server error: ${response.statusCode}");
      }
    } catch (e) {
      if (attempt < maxRetries && !(_cancelToken?.isCancelled ?? false)) {
        final delay = (2 << attempt) * 1000; // Exponential backoff
        Logs().w("Retrying batch ($attempt/$maxRetries) after ${delay}ms...");
        await Future.delayed(Duration(milliseconds: delay));
        return await uploadBatchWithRetry(client, batch, attempt: attempt + 1);
      } else {
        // Return original batch on failure after max retries
        // This ensures we don't block synchronization on network errors
        Logs().e("Failed to upload batch after $maxRetries attempts: $e");
        return batch;
      }
    }
  }
}

/// Simple semaphore implementation for limiting concurrent operations
class Semaphore {
  final int _maxConcurrent;
  int _current = 0;
  final List<Completer<void>> _queue = [];

  Semaphore(this._maxConcurrent);

  Future<T> run<T>(Future<T> Function() task) async {
    await _acquire();
    try {
      return await task();
    } finally {
      _release();
    }
  }

  Future<void> _acquire() async {
    if (_current < _maxConcurrent) {
      _current++;
      return Future.value();
    }

    final completer = Completer<void>();
    _queue.add(completer);
    return completer.future;
  }

  void _release() {
    if (_queue.isNotEmpty) {
      final completer = _queue.removeAt(0);
      completer.complete();
    } else {
      _current--;
    }
  }
}

/// Simple cancellation token for async operations
class CancelToken {
  bool _isCancelled = false;
  bool get isCancelled => _isCancelled;

  void cancel() {
    _isCancelled = true;
  }

  void reset() {
    _isCancelled = false;
  }
}

class ContactSyncUtility {
  /// Check and request permission to access contacts
  static Future<bool> checkPermissions() async {
    return await fc.FlutterContacts.requestPermission(readonly: true);
  }

  /// Convenience method to start full synchronization process
  static Future<void> startFullSync(Client client) async {
    // First check permissions
    final hasPermission = await checkPermissions();
    if (!hasPermission) {
      Logs().w("Contact permissions not granted");
      return;
    }

    // Start database sync first - use unawaited to run in background
    ContactSyncDatabaseUtility.syncContacts(client).then((_) {});

    // After database sync completes, start network sync
    ContactSyncDatabaseUtility.progressStream
        .where((progress) => progress.isComplete)
        .take(1)
        .listen((_) {
          // Start network sync in background
          ContactSyncNetworkUtility.syncContacts(client).then((_) {});
        });
  }

  /// Cancel all ongoing sync operations
  static void cancelAllSync() {
    ContactSyncDatabaseUtility.cancelSync();
    ContactSyncNetworkUtility.cancelNetworkSync();
  }
}
