import 'package:flutter/material.dart';
import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/widgets/abstract_validated_widget.dart';

class GroupSavingAmountStep extends ValidatedFieldsWidget {
  final NewGroupTypeController controller;

  const GroupSavingAmountStep(this.controller, {super.key});

  @override
  List<String> fieldsToValidate() {
    return ['periodicSaving'];
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
            controller: controller.groupSavingAmountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.monetization_on_outlined),
              labelText: L10n.of(context).periodicSavingAmount,
              errorText: controller.getFieldError('periodicSaving'),
            ),
            validator: (_) => controller.getFieldError('periodicSaving'),
            onChanged: (value) {
              final payload = controller.payload;
              // Fix: Update the correct property - periodicSaving, not groupName
              payload.periodicSaving = int.tryParse(value);
              controller.setPayload(payload);

              // Clear any error
              controller.clearFieldError('periodicSaving');
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
