import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:crypto/crypto.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:http/http.dart' as http;

class IContact {
  Contact contact;
  String hash;

  IContact({required this.contact, required this.hash});
}

class ContactFetcher {
  static String hashContact(Contact contact) {
    final contactJson = contact.toJson(withThumbnail: false, withPhoto: false);
    final contactJsonStr = jsonEncode(contactJson);
    return sha256.convert(utf8.encode(contactJsonStr)).toString();
  }

  static Future<String> getContactHashByID(String contactId) async {
    return "";
  }

  static Future<void> saveContactHashByID(
    String contactId,
    String contactHash,
  ) async {}

  static Future<List<Contact>> fetchAllContacts() async {
    // Only run on Android or iOS
    if (!(Platform.isAndroid || Platform.isIOS)) return [];

    return await FlutterContacts.getContacts(withProperties: true);
  }

  static Future<List<IContact>> fetchContactsToSync() async {
    final syncContacts = List<IContact>.empty(growable: true);
    final allContacts = await fetchAllContacts();
    for (final contact in allContacts) {
      final currentHash = hashContact(contact);
      final storedHash = await getContactHashByID(contact.id);

      if (storedHash != currentHash) {
        syncContacts.add(IContact(contact: contact, hash: currentHash));
      }
    }

    return syncContacts;
  }
}

class ContactSyncUtility {
  static const String serverUrl = 'https://your-api.com/contacts';
  static const int maxRetries = 3;

  static Future<void> syncContacts() async {
    final phoneContacts = await ContactFetcher.fetchContactsToSync();

    const batchSize = 50;
    for (var i = 0; i < phoneContacts.length; i += batchSize) {
      final batch = phoneContacts.sublist(
        i,
        i + batchSize > phoneContacts.length
            ? phoneContacts.length
            : i + batchSize,
      );

      final uploadedContacts = await uploadBatchWithRetry(batch);
      for (final c in uploadedContacts) {
        await ContactFetcher.saveContactHashByID(c.contact.id, c.hash);
      }
    }
  }

  static Future<List<IContact>> uploadBatchWithRetry(
    List<IContact> batch, {
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
        print("Retrying batch ($attempt/$maxRetries) after ${delay}ms...");
        await Future.delayed(Duration(milliseconds: delay));
        return await uploadBatchWithRetry(batch, attempt: attempt + 1);
      } else {
        rethrow;
      }
    }
  }
}

class BackgroundContactSync {
  static void startSync() {
    if (Platform.isAndroid || Platform.isIOS) {
      Isolate.spawn(_syncIsolate, null);
    } else {
      print("Sync is only supported on Android/iOS.");
    }
  }

  static void _syncIsolate(dynamic message) async {
    await ContactSyncUtility.syncContacts();
  }

  static Future<bool> checkPermissions() async {
    return await FlutterContacts.requestPermission(readonly: true);
  }
}
