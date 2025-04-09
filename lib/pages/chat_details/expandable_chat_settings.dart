import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/l10n/l10n.dart';

class ExpandableChatSettings extends StatefulWidget {
  final Room room;
  final Color? iconColor;
  final VoidCallback onEmoteSettingsTap;

  const ExpandableChatSettings({
    super.key,
    required this.room,
    required this.iconColor,
    required this.onEmoteSettingsTap,
  });

  @override
  State<ExpandableChatSettings> createState() => _ExpandableChatSettingsState();
}

class _ExpandableChatSettingsState extends State<ExpandableChatSettings> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: theme.scaffoldBackgroundColor,
            foregroundColor: widget.iconColor,
            child: const Icon(Icons.settings_outlined),
          ),
          title: Text(L10n.of(context).chatSettings),
          trailing: Icon(
            _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          ),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded) ...[
          // 1. Custom Emojis
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.scaffoldBackgroundColor,
                foregroundColor: widget.iconColor,
                child: const Icon(Icons.insert_emoticon_outlined),
              ),
              title: Text(L10n.of(context).customEmojisAndStickers),
              subtitle: Text(L10n.of(context).setCustomEmotes),
              onTap: widget.onEmoteSettingsTap,
              trailing: const Icon(Icons.chevron_right_outlined),
            ),
          ),
          // 2. Access and Visibility (only for non-direct chats)
          if (!widget.room.isDirectChat)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  foregroundColor: widget.iconColor,
                  child: const Icon(Icons.shield_outlined),
                ),
                title: Text(L10n.of(context).accessAndVisibility),
                subtitle: Text(L10n.of(context).accessAndVisibilityDescription),
                onTap:
                    () =>
                        context.push('/rooms/${widget.room.id}/details/access'),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
            ),
          // 3. Chat Permissions (only for non-direct chats)
          if (!widget.room.isDirectChat)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  foregroundColor: widget.iconColor,
                  child: const Icon(Icons.edit_attributes_outlined),
                ),
                title: Text(L10n.of(context).chatPermissions),
                subtitle: Text(L10n.of(context).whoCanPerformWhichAction),
                trailing: const Icon(Icons.chevron_right_outlined),
                onTap:
                    () => context.push(
                      '/rooms/${widget.room.id}/details/permissions',
                    ),
              ),
            ),
        ],
      ],
    );
  }
}
