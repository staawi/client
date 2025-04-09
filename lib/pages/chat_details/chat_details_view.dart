import 'package:flutter/material.dart';

import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix/matrix.dart';

import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/chat_details/chat_details.dart';
import 'package:stawi/pages/chat_details/expandable_chat_settings.dart';
import 'package:stawi/pages/chat_details/participant_list_item.dart';
import 'package:stawi/utils/fluffy_share.dart';
import 'package:stawi/utils/matrix_sdk_extensions/matrix_locals.dart';
import 'package:stawi/widgets/avatar.dart';
import 'package:stawi/widgets/chat_settings_popup_menu.dart';
import 'package:stawi/widgets/layouts/max_width_body.dart';
import 'package:stawi/widgets/matrix.dart';
import '../../utils/url_launcher.dart';
import '../../widgets/qr_code_viewer.dart';

class ChatDetailsView extends StatelessWidget {
  final ChatDetailsController controller;

  const ChatDetailsView(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final room = Matrix.of(context).client.getRoomById(controller.roomId!);
    if (room == null) {
      return Scaffold(
        appBar: AppBar(title: Text(L10n.of(context).oopsSomethingWentWrong)),
        body: Center(
          child: Text(L10n.of(context).youAreNoLongerParticipatingInThisChat),
        ),
      );
    }

    return StreamBuilder(
      stream: room.client.onRoomState.stream.where(
        (update) => update.roomId == room.id,
      ),
      builder: (context, snapshot) {
        var members =
            room.getParticipants().toList()
              ..sort((b, a) => a.powerLevel.compareTo(b.powerLevel));
        members = members.take(10).toList();
        final actualMembersCount =
            (room.summary.mInvitedMemberCount ?? 0) +
            (room.summary.mJoinedMemberCount ?? 0);
        final canRequestMoreMembers = members.length < actualMembersCount;
        final iconColor = theme.textTheme.bodyLarge!.color;
        final displayname = room.getLocalizedDisplayname(
          MatrixLocals(L10n.of(context)),
        );
        return Scaffold(
          appBar: AppBar(
            leading:
                controller.widget.embeddedCloseButton ??
                const Center(child: BackButton()),
            elevation: theme.appBarTheme.elevation,
            actions: <Widget>[
              if (room.canonicalAlias.isNotEmpty) ...[
                IconButton(
                  tooltip: L10n.of(context).share,
                  icon: const Icon(Icons.qr_code_rounded),
                  onPressed:
                      () => showQrCodeViewer(context, room.canonicalAlias),
                ),
              ],
              if (controller.widget.embeddedCloseButton == null)
                ChatSettingsPopupMenu(room, false),
            ],
            title: Text(L10n.of(context).chatDetails),
            backgroundColor: theme.appBarTheme.backgroundColor,
          ),
          body: MaxWidthBody(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: members.length + 1 + (canRequestMoreMembers ? 1 : 0),
              itemBuilder:
                  (BuildContext context, int i) =>
                      i == 0
                          ? Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Stack(
                                      children: [
                                        Hero(
                                          tag:
                                              controller
                                                          .widget
                                                          .embeddedCloseButton !=
                                                      null
                                                  ? 'embedded_content_banner'
                                                  : 'content_banner',
                                          child: Avatar(
                                            mxContent: room.avatar,
                                            name: displayname,
                                            size: Avatar.defaultSize * 2.5,
                                          ),
                                        ),
                                        if (!room.isDirectChat &&
                                            room.canChangeStateEvent(
                                              EventTypes.RoomAvatar,
                                            ))
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: FloatingActionButton.small(
                                              onPressed:
                                                  controller.setAvatarAction,
                                              heroTag: null,
                                              child: const Icon(
                                                Icons.camera_alt_outlined,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextButton.icon(
                                          onPressed:
                                              () =>
                                                  room.isDirectChat
                                                      ? null
                                                      : room
                                                          .canChangeStateEvent(
                                                            EventTypes.RoomName,
                                                          )
                                                      ? controller
                                                          .setDisplaynameAction()
                                                      : FluffyShare.share(
                                                        displayname,
                                                        context,
                                                        copyOnly: true,
                                                      ),
                                          icon: Icon(
                                            room.isDirectChat
                                                ? Icons.chat_bubble_outline
                                                : room.canChangeStateEvent(
                                                  EventTypes.RoomName,
                                                )
                                                ? Icons.edit_outlined
                                                : Icons.copy_outlined,
                                            size: 16,
                                          ),
                                          style: TextButton.styleFrom(
                                            foregroundColor:
                                                theme.colorScheme.onSurface,
                                            iconColor:
                                                theme.colorScheme.onSurface,
                                          ),
                                          label: Text(
                                            room.isDirectChat
                                                ? L10n.of(context).directChat
                                                : displayname,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        TextButton.icon(
                                          onPressed:
                                              () =>
                                                  room.isDirectChat
                                                      ? null
                                                      : context.push(
                                                        '/rooms/${controller.roomId}/details/members',
                                                      ),
                                          icon: const Icon(
                                            Icons.group_outlined,
                                            size: 14,
                                          ),
                                          style: TextButton.styleFrom(
                                            foregroundColor:
                                                theme.colorScheme.secondary,
                                            iconColor:
                                                theme.colorScheme.secondary,
                                          ),
                                          label: Text(
                                            L10n.of(context).countParticipants(
                                              actualMembersCount,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            //    style: const TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: theme.dividerColor),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SelectableLinkify(
                                        text: room.topic.isEmpty
                                            ? L10n.of(context).noChatDescriptionYet
                                            : room.topic,
                                        options: const LinkifyOptions(
                                          humanize: false,
                                        ),
                                        linkStyle: const TextStyle(
                                          color: Colors.blueAccent,
                                          decorationColor: Colors.blueAccent,
                                        ),
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontStyle: room.topic.isEmpty
                                              ? FontStyle.italic
                                              : FontStyle.normal,
                                          color: theme.textTheme.bodyMedium!.color,
                                          decorationColor:
                                              theme.textTheme.bodyMedium!.color,
                                        ),
                                        onOpen: (url) => UrlLauncher(
                                          context,
                                          url.url,
                                        ).launchUrl(),
                                      ),
                                    ),
                                    if (room.canChangeStateEvent(EventTypes.RoomTopic))
                                      IconButton(
                                        icon: const Icon(Icons.edit_outlined, size: 20),
                                        onPressed: controller.setTopicAction,
                                        color: theme.colorScheme.secondary,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Divider(color: theme.dividerColor),
                              ExpandableChatSettings(
                                room: room,
                                iconColor: iconColor,
                                onEmoteSettingsTap: controller.goToEmoteSettings,
                              ),
                              Divider(color: theme.dividerColor),
                              ListTile(
                                title: Text(
                                  L10n.of(
                                    context,
                                  ).countParticipants(actualMembersCount),
                                  style: TextStyle(
                                    color: theme.colorScheme.secondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              if (!room.isDirectChat && room.canInvite)
                                ListTile(
                                  title: Text(L10n.of(context).inviteContact),
                                  leading: CircleAvatar(
                                    backgroundColor:
                                        theme.colorScheme.primaryContainer,
                                    foregroundColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    radius: Avatar.defaultSize / 2,
                                    child: const Icon(Icons.add_outlined),
                                  ),
                                  trailing: const Icon(
                                    Icons.chevron_right_outlined,
                                  ),
                                  onTap:
                                      () => context.go(
                                        '/rooms/${room.id}/invite',
                                      ),
                                ),
                            ],
                          )
                          : i < members.length + 1
                          ? ParticipantListItem(members[i - 1])
                          : ListTile(
                            title: Text(
                              L10n.of(context).loadCountMoreParticipants(
                                (actualMembersCount - members.length),
                              ),
                            ),
                            leading: CircleAvatar(
                              backgroundColor: theme.scaffoldBackgroundColor,
                              child: const Icon(
                                Icons.group_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            onTap:
                                () => context.push(
                                  '/rooms/${controller.roomId!}/details/members',
                                ),
                            trailing: const Icon(Icons.chevron_right_outlined),
                          ),
            ),
          ),
        );
      },
    );
  }
}
