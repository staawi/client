import 'package:chamamobile/config/themes.dart';
import 'package:chamamobile/pages/new_group_type/new_group.dart';
import 'package:flutter/material.dart';
import 'package:chamamobile/l10n/l10n.dart';

class GroupNameStep extends StatelessWidget {
  final NewGroupController controller;

  const GroupNameStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            autofocus: true,
            autocorrect: false,
            controller: controller.groupNameController,
            readOnly: controller.loading,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.people_outlined),
              labelText: L10n.of(context).groupName,
            ),
            onChanged: (value) {
              final payload = controller.payload;
              payload.groupName = value;
              controller.setPayload(payload);
            },
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            autofocus: true,
            autocorrect: false,
            minLines: 3,
            maxLines: 5,
            controller: controller.groupDescriptionController,
            readOnly: controller.loading,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.info_outline_rounded),
              labelText: L10n.of(context).groupDescription,
            ),
            onChanged: (value) {
              final payload = controller.payload;
              payload.description = value;
              controller.setPayload(payload);
            },
          ),
        ),
        const SizedBox(height: 16),
        SwitchListTile.adaptive(
          contentPadding: const EdgeInsets.symmetric(horizontal: 32),
          secondary: const Icon(Icons.public_outlined),
          title: Text(
            L10n.of(context).groupIsPublic,
          ),
          value: controller.payload.isPublic ?? false,
          onChanged: (value) {
            if (controller.loading) return;
            final payload = controller.payload;
            payload.isPublic = value;
            controller.setPayload(payload);
          },
        ),
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: controller.publicGroup
              ? SwitchListTile.adaptive(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                  secondary: const Icon(Icons.search_outlined),
                  title: Text(L10n.of(context).groupCanBeFoundViaSearch),
                  value: controller.groupCanBeFound,
                  onChanged:
                      controller.loading ? null : controller.setGroupCanBeFound,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
