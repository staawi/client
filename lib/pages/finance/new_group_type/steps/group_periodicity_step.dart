import 'package:flutter/material.dart';
import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/new_group_type/new_group_type.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';

class GroupPeriodicityStep extends StatelessWidget {
  final NewGroupTypeController controller;

  const GroupPeriodicityStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 32),
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            trailing: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.info_outlined),
            ),
            subtitle: Text(L10n.of(context).periodicTypeDescription),
          ),
        ),
        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<PeriodType>(
              value: controller.payload.periodType ?? PeriodType.weekly,
              isExpanded: true,
              items: [
                DropdownMenuItem<PeriodType>(
                  value: PeriodType.weekly,
                  child: Text(L10n.of(context).periodTypeWeekly),
                ),
                DropdownMenuItem<PeriodType>(
                  value: PeriodType.biweekly,
                  child: Text(L10n.of(context).periodTypeBiWeekly),
                ),
                DropdownMenuItem<PeriodType>(
                  value: PeriodType.monthly,
                  child: Text(L10n.of(context).periodTypeMonthly),
                ),
              ],
              onChanged: (PeriodType? newValue) {
                final payload = controller.payload;
                payload.periodType = newValue;
                controller.setPayload(payload);
              },
            ),
          ),
        ),
      ],
    );
  }
}
