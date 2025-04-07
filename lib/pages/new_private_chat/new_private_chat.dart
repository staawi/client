import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:matrix/matrix.dart';

import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/new_private_chat/new_private_chat_view.dart';
import 'package:stawi/pages/new_private_chat/qr_scanner_modal.dart';
import 'package:stawi/pages/user_bottom_sheet/user_bottom_sheet.dart';
import 'package:stawi/utils/adaptive_bottom_sheet.dart';
import 'package:stawi/utils/contacts_sync.dart';
import 'package:stawi/utils/fluffy_share.dart';
import 'package:stawi/utils/platform_infos.dart';
import 'package:stawi/utils/url_launcher.dart';
import 'package:stawi/widgets/matrix.dart';

class NewPrivateChat extends StatefulWidget {
  const NewPrivateChat({super.key});

  @override
  NewPrivateChatController createState() => NewPrivateChatController();
}

class NewPrivateChatController extends State<NewPrivateChat> {
  final TextEditingController controller = TextEditingController();
  final FocusNode textFieldFocus = FocusNode();

  Future<List<Profile>>? searchResponse;

  Timer? _searchCoolDown;

  static const Duration _coolDown = Duration(milliseconds: 500);

  bool _contactPermissionsDenied = false;

  bool contactAccessNotPermitted() {
    return _contactPermissionsDenied;
  }

  @override
  void initState() {
    super.initState();
    _synchronizeContacts();
    searchUsers();
  }

  Future<void> _synchronizeContacts() async {
    if (!await ContactSyncUtility.checkPermissions()) {
      setState(() => _contactPermissionsDenied = true);
    } else {
      final client = Matrix.of(context).client;
      await ContactSyncDatabaseUtility.syncContacts(client);
      setState(() => _contactPermissionsDenied = false);
    }
  }

  void searchUsers([String? input]) async {
    final searchTerm = input ?? controller.text;

    _searchCoolDown?.cancel();
    _searchCoolDown = Timer(_coolDown, () {
      setState(() {
        searchResponse = _searchUser(searchTerm);
      });
    });
  }

  Future<List<Profile>> _searchUser(String searchTerm) async {
    final client = Matrix.of(context).client;

    final networkResult = await client.searchUserDirectory(searchTerm);
    return networkResult.results;
  }

  void inviteAction() => FluffyShare.shareInviteLink(context);

  void openScannerAction() async {
    if (PlatformInfos.isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      if (info.version.sdkInt < 21) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(L10n.of(context).unsupportedAndroidVersionLong),
          ),
        );
        return;
      }
    }
    await showAdaptiveBottomSheet(
      context: context,
      builder:
          (_) => QrScannerModal(
            onScan: (link) => UrlLauncher(context, link).openMatrixToUrl(),
          ),
    );
  }

  void copyUserId() async {
    await Clipboard.setData(
      ClipboardData(text: Matrix.of(context).client.userID!),
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(L10n.of(context).copiedToClipboard)));
  }

  void openUserModal(Profile profile) => showAdaptiveBottomSheet(
    context: context,
    builder: (c) => UserBottomSheet(profile: profile, outerContext: context),
  );

  @override
  Widget build(BuildContext context) => NewPrivateChatView(this);
}
