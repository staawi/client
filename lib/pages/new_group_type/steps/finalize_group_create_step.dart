import 'package:chamamobile/config/themes.dart';
import 'package:chamamobile/pages/new_group_type/new_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class FinalizeGroupCreateStep extends StatelessWidget {
  final NewGroupController controller;

  const FinalizeGroupCreateStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            trailing: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.info_outlined),
            ),
            subtitle: Text(
              L10n.of(context).finalizeGroupCreationDescription(
                controller.payload.groupName ?? "",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
