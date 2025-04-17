import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/pages/finance/widgets/group_calendar_widget.dart';
import 'package:stawi/services/stawi/payloads/default_payloads.dart';

class GroupCalendarSelectionStep extends StatefulWidget {
  final NewGroupTypeController controller;

  const GroupCalendarSelectionStep(this.controller, {super.key});

  @override
  State<GroupCalendarSelectionStep> createState() =>
      _GroupCalendarSelectionStepState();
}

class _GroupCalendarSelectionStepState
    extends State<GroupCalendarSelectionStep> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate =
        widget.controller.payload.groupSavingsDay ??
        DateTime.now().add(const Duration(days: 1));
  }

  void _onDateSelected(DateTime selectedDate) {
    setState(() {
      _selectedDate = selectedDate;

      // Update the payload with the selected date
      widget.controller.payload.groupSavingsDay = _selectedDate;
      widget.controller.clearFieldError('groupSavingsDay');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get period type from payload
    final periodType =
        widget.controller.payload.periodType ?? PeriodType.weekly;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            L10n.of(context).selectStartDate,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            L10n.of(context).startDateDescription,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 16),
        GroupCalendarWidget(
          startDate: _selectedDate,
          periodType: periodType,
          tenureWeeks: 52, // Default to 52 weeks (1 year)
          onDateSelected: _onDateSelected,
        ),
        const SizedBox(height: 16),
        if (widget.controller.getFieldError('startDate') != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.controller.getFieldError('startDate')!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12,
              ),
            ),
          ),
      ],
    );
  }
}
