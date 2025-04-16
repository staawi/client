import 'package:flutter/material.dart';
import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:stawi/widgets/abstract_validated_widget.dart';

class GroupTerminationDateStep extends ValidatedFieldsWidget {
  final NewGroupTypeController controller;

  const GroupTerminationDateStep(this.controller, {super.key});

  @override
  List<String> fieldsToValidate() {
    return ['terminationDate'];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextFormField(
            autofocus: true,
            autocorrect: false,
            readOnly: controller.loading,
            controller: controller.groupTerminationController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.calendar_month),
              labelText: L10n.of(context).groupTerminationDate,
              errorText: controller.getFieldError('terminationDate'),
            ),
            validator: (_) => controller.getFieldError('terminationDate'),
            onTap: () async {
              final now = DateTime.now();
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: now,
                firstDate: now,
                lastDate: now.add(const Duration(days: 1000)),
              );

              final payload = controller.payload;
              if (payload is GroupCreateTemporaryPayload) {
                if (payload.terminationDate == null ||
                    pickedDate != null &&
                        pickedDate.isAtSameMomentAs(payload.terminationDate!) ==
                            false) {
                  payload.terminationDate = pickedDate;
                  controller.setPayload(payload);
                  controller.groupTerminationController.text =
                      payload.terminationDate != null
                          ? payload.terminationDate!.toIso8601String()
                          : '';

                  // Clear any error
                  controller.clearFieldError('terminationDate');
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
