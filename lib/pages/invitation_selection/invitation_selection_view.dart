import 'package:flutter/material.dart';

import 'package:matrix/matrix.dart';

import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/invitation_selection/invitation_selection.dart';
import 'package:stawi/pages/user_bottom_sheet/user_bottom_sheet.dart';
import 'package:stawi/utils/adaptive_bottom_sheet.dart';
import 'package:stawi/widgets/avatar.dart';
import 'package:stawi/widgets/layouts/max_width_body.dart';
import 'package:stawi/widgets/matrix.dart';

class InvitationSelectionView extends StatefulWidget {
  final InvitationSelectionController controller;

  const InvitationSelectionView(this.controller, {super.key});

  @override
  State<InvitationSelectionView> createState() =>
      _InvitationSelectionViewState();
}

class _InvitationSelectionViewState extends State<InvitationSelectionView> {
  @override
  Widget build(BuildContext context) {
    final room = Matrix.of(
      context,
    ).client.getRoomById(widget.controller.widget.roomId);
    if (room == null) {
      return Scaffold(
        appBar: AppBar(title: Text(L10n.of(context).oopsSomethingWentWrong)),
        body: Center(
          child: Text(L10n.of(context).youAreNoLongerParticipatingInThisChat),
        ),
      );
    }

    final groupName = room.name.isEmpty ? L10n.of(context).group : room.name;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Center(child: BackButton()),
        titleSpacing: 0,
        title: Text(L10n.of(context).inviteContact),
      ),
      body: MaxWidthBody(
        innerPadding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: widget.controller.controller,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: theme.colorScheme.secondaryContainer,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  hintStyle: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: L10n.of(context).inviteContactToGroup(groupName),
                  prefixIcon:
                      widget.controller.loading
                          ? const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12,
                            ),
                            child: SizedBox.square(
                              dimension: 24,
                              child: CircularProgressIndicator.adaptive(
                                strokeWidth: 2,
                              ),
                            ),
                          )
                          : const Icon(Icons.search_outlined),
                  // Add a clear button when there's text but not when empty
                  suffixIcon:
                      widget.controller.controller.text.isNotEmpty
                          ? IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              widget.controller.controller.clear();
                              // Trigger a search with empty text to clear results
                              widget.controller.searchUserWithCoolDown('');
                            },
                          )
                          : null,
                ),
                onChanged: widget.controller.searchUserWithCoolDown,
              ),
            ),
            // Name input field for email/phone invitations
            if (widget.controller.showNameInput)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: widget.controller.nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: theme.colorScheme.secondaryContainer,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: L10n.of(context).enterContactName,
                          // Add a clear button for the name field only when not empty
                          suffixIcon:
                              widget.controller.nameController.text.isNotEmpty
                                  ? IconButton(
                                    icon: const Icon(Icons.cancel),
                                    onPressed: () {
                                      widget.controller.nameController.clear();
                                      // Call onNameChanged to update the profiles
                                      widget.controller.onNameChanged('');
                                      // Force rebuild to hide the icon
                                      setState(() {});
                                    },
                                  )
                                  : null,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (text) {
                          // Update the UI for clear button visibility
                          setState(() {});
                          // Process the name change in the controller
                          widget.controller.onNameChanged(text);
                        },
                      ),
                    ),
                  ],
                ),
              ),

            StreamBuilder<Object>(
              stream: room.client.onRoomState.stream.where(
                (update) => update.roomId == room.id,
              ),
              builder: (context, snapshot) {
                final participants =
                    room.getParticipants().map((user) => user.id).toSet();
                return widget.controller.foundProfiles.isNotEmpty
                    ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.controller.foundProfiles.length,
                      itemBuilder:
                          (BuildContext context, int i) =>
                              _InviteContactListTile(
                                profile: widget.controller.foundProfiles[i],
                                isMember: participants.contains(
                                  widget.controller.foundProfiles[i].userId,
                                ),
                                onTap:
                                    () => widget.controller.inviteAction(
                                      context,
                                      widget.controller.foundProfiles[i],
                                    ),
                              ),
                    )
                    : FutureBuilder<List<User>>(
                      future: widget.controller.getContacts(context),
                      builder: (BuildContext context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(
                              strokeWidth: 2,
                            ),
                          );
                        }
                        final contacts = snapshot.data!;
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: contacts.length,
                          itemBuilder:
                              (BuildContext context, int i) =>
                                  _InviteContactListTile(
                                    user: contacts[i],
                                    profile: Profile(
                                      avatarUrl: contacts[i].avatarUrl,
                                      displayName:
                                          contacts[i].displayName ??
                                          contacts[i].id.localpart ??
                                          L10n.of(context).user,
                                      userId: contacts[i].id,
                                    ),
                                    isMember: participants.contains(
                                      contacts[i].id,
                                    ),
                                    onTap:
                                        () => widget.controller.inviteAction(
                                          context,
                                          Profile(userId: contacts[i].id),
                                        ),
                                  ),
                        );
                      },
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _InviteContactListTile extends StatelessWidget {
  final Profile profile;
  final User? user;
  final bool isMember;
  final void Function() onTap;

  const _InviteContactListTile({
    required this.profile,
    this.user,
    required this.isMember,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    return ListTile(
      leading: Avatar(
        mxContent: profile.avatarUrl,
        name: profile.displayName,
        presenceUserId: profile.userId,
        onTap:
            () => showAdaptiveBottomSheet(
              context: context,
              builder:
                  (c) => UserBottomSheet(
                    user: user,
                    profile: profile,
                    outerContext: context,
                  ),
            ),
      ),
      title: Text(
        profile.displayName ?? l10n.user,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        profile.userId ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: theme.colorScheme.secondary),
      ),
      trailing: TextButton.icon(
        onPressed: isMember ? null : onTap,
        label: Text(isMember ? l10n.participant : l10n.invite),
        icon: Icon(isMember ? Icons.check : Icons.add),
      ),
    );
  }
}
