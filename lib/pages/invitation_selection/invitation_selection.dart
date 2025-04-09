import 'dart:async';

import 'package:flutter/material.dart';

import 'package:matrix/matrix.dart';

import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/invitation_selection/invitation_selection_view.dart';
import 'package:stawi/widgets/future_loading_dialog.dart';
import 'package:stawi/widgets/matrix.dart';
import '../../utils/localized_exception_extension.dart';

class InvitationSelection extends StatefulWidget {
  final String roomId;

  const InvitationSelection({super.key, required this.roomId});

  @override
  InvitationSelectionController createState() =>
      InvitationSelectionController();
}

class InvitationSelectionController extends State<InvitationSelection> {
  TextEditingController controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  late String currentSearchTerm;
  bool loading = false;
  List<Profile> foundProfiles = [];
  Timer? coolDown;

  // Track if we're collecting a name for email/phone
  bool showNameInput = false;
  ProfileContact? pendingContact;

  String? get roomId => widget.roomId;

  @override
  void initState() {
    super.initState();
    searchUser(context, '');
  }

  Future<List<User>> getContacts(BuildContext context) async {
    final client = Matrix.of(context).client;
    final room = client.getRoomById(roomId!)!;

    final participants =
        (room.summary.mJoinedMemberCount ?? 0) > 100
            ? room.getParticipants()
            : await room.requestParticipants();
    participants.removeWhere(
      (u) => ![Membership.join, Membership.invite].contains(u.membership),
    );
    final contacts =
        client.rooms
            .where((r) => r.isDirectChat)
            .map(
              (r) => r.unsafeGetUserFromMemoryOrFallback(r.directChatMatrixID!),
            )
            .toList();
    contacts.sort(
      (a, b) => a.calcDisplayname().toLowerCase().compareTo(
        b.calcDisplayname().toLowerCase(),
      ),
    );
    return contacts;
  }

  void inviteAction(
    BuildContext context,
    Profile profile, {
    String? invitationReason,
  }) async {
    final room = Matrix.of(context).client.getRoomById(roomId!)!;

    final success = await showFutureLoadingDialog(
      context: context,
      future: () async {
        if (profile.isOnboardedProfile()) {
          await room.invite(profile.userId!, reason: invitationReason);
        } else {
          if (profile.hasContacts()) {
            for (final contact in profile.contacts!) {
              await room.inviteByContact(contact, reason: invitationReason);
            }
          }
        }
      },
    );

    if (success.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(L10n.of(context).contactHasBeenInvitedToTheGroup),
        ),
      );
    }
  }

  // Called when name input changes to update profile with name
  void onNameChanged(String name) async {
    Logs().d('onNameChanged: $name');
    if (name.isEmpty) {
      // If name is cleared, remove the profile from list
      setState(() {
        foundProfiles = [];
      });
      return;
    }

    if (pendingContact != null && pendingContact!.isValid()) {
      setState(() {
        foundProfiles = [
          Profile(displayName: name, contacts: [pendingContact!]),
        ];
      });
    }
  }

  void searchUserWithCoolDown(String text) async {
    coolDown?.cancel();
    coolDown = Timer(
      const Duration(milliseconds: 1000),
      () => searchUser(context, text),
    );
  }

  void searchUser(BuildContext context, String text) async {
    coolDown?.cancel();
    currentSearchTerm = text;
    if (loading) return;

    setState(() {
      loading = true;
    });

    // Always perform a search, even with empty text
    final matrix = Matrix.of(context);
    SearchUserDirectoryResponse? response;

    try {
      response = await matrix.client.searchUserDirectory(text, limit: 10);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text((e).toLocalizedString(context))));
      return;
    } finally {
      setState(() => loading = false);
    }

    setState(() {
      foundProfiles = List<Profile>.from(response?.results ?? []);
      showNameInput = false;

      if (foundProfiles.isEmpty && text.isNotEmpty) {
        // Case 1: Valid Matrix ID not found in results
        if (text.isValidMatrixId) {
          foundProfiles = [Profile(displayName: "", userId: text)];
        } else {
          // Case 2: Check if it's a valid email or phone
          final pContact = ProfileContact(detail: text);
          if (pContact.isValid()) {
            showNameInput = true;
            pendingContact = pContact;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) => InvitationSelectionView(this);
}
