import 'package:flutter/material.dart';

import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/new_group_type/new_group.dart';
import 'package:stawi/requests/payload/group_create_payload.dart';

class GroupTerminationDateStep extends StatelessWidget {
  final NewGroupController controller;

  const GroupTerminationDateStep(this.controller, {super.key});

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
            controller: controller.groupTerminationController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.calendar_month),
              labelText: L10n.of(context).groupTerminationDate,
            ),
            onTap: () async {
              final now = DateTime.now();
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: now,
                firstDate: now,
                lastDate: now.add(const Duration(days: 1000)),
              );

              final payload = controller.payload;
              if (payload is PayloadGroupCreateTemporary) {
                if (payload.terminationDate == null ||
                    pickedDate != null &&
                        pickedDate.isAtSameMomentAs(payload.terminationDate!) ==
                            false) {
                  payload.terminationDate = pickedDate;
                  controller.setPayload(payload);
                  controller.groupTerminationController.text =
                      payload.terminationDate!.toIso8601String();
                }
              }
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
            subtitle: Text(L10n.of(context).groupTerminationDateDescription),
          ),
        ),
      ],
    );
  }
}
