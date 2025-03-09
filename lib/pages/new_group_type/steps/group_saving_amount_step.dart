import 'package:chamamobile/config/themes.dart';
import 'package:chamamobile/pages/new_group_type/new_group.dart';
import 'package:flutter/material.dart';
import 'package:chamamobile/l10n/l10n.dart';

class GroupSavingAmountStep extends StatelessWidget {
  final NewGroupController controller;

  const GroupSavingAmountStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            autofocus: true,
            autocorrect: false,
            readOnly: controller.loading,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.monetization_on_outlined),
              labelText: L10n.of(context).periodicSavingAmount,
            ),
            onChanged: (value) {
              final payload = controller.payload;
              payload.groupName = value;
              controller.setPayload(payload);
            },
          ),
        ),
        const SizedBox(height: 16),
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            trailing: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.info_outlined),
            ),
            subtitle: Text(L10n.of(context).periodicSavingAmountDescription),
          ),
        ),
      ],
    );
  }
}
