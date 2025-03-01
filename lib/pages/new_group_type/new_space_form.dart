import 'package:chamamobile/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'new_group.dart';

class CreateSpaceForm extends StatelessWidget {
  final NewGroupController controller;

  const CreateSpaceForm(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 16),
        SwitchListTile.adaptive(
          contentPadding: const EdgeInsets.symmetric(horizontal: 32),
          secondary: const Icon(Icons.public_outlined),
          title: Text(
            L10n.of(context).spaceIsPublic,
          ),
          value: controller.publicGroup,
          onChanged: controller.loading ? null : controller.setPublicGroup,
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
        AnimatedSize(
            duration: FluffyThemes.animationDuration,
            curve: FluffyThemes.animationCurve,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 32),
              trailing: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(Icons.info_outlined),
              ),
              subtitle: Text(L10n.of(context).newSpaceDescription),
            ),),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.loading ? null : controller.submitAction,
              child: controller.loading
                  ? const LinearProgressIndicator()
                  : Text(L10n.of(context).createNewSpace),
            ),
          ),
        ),
      ],
    );
  }
}
