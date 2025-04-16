import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/services/stawi/payloads/default_payloads.dart';
import 'package:stawi/services/stawi/payloads/group_create_payloads.dart';
import 'package:table_calendar/table_calendar.dart';

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
  late DateTime _firstDay;
  late List<DateTime> _highlightedDates = [];

  @override
  void initState() {
    super.initState();
    _firstDay = DateTime.now();
    _selectedDate =
        widget.controller.payload.groupSavingsDay ??
        DateTime.now().add(const Duration(days: 1));

    // Set initial highlighted dates based on periodicity
    _updateHighlightedDates();
  }

  void _updateHighlightedDates() {
    final payload = widget.controller.payload;

    // Clear previous highlighted dates
    _highlightedDates = [];

    // Get period type from payload
    var periodType = PeriodType.weekly;
    if (payload is GroupCreateMerryGoRoundPayload) {
      periodType = payload.periodType ?? PeriodType.weekly;
    }

    // Add 10 future dates based on the period type
    var nextDate = _selectedDate;
    for (int i = 0; i < 10; i++) {
      switch (periodType) {
        case PeriodType.daily:
          nextDate = nextDate.add(const Duration(days: 1));
          break;
        case PeriodType.weekly:
          nextDate = nextDate.add(const Duration(days: 7));
          break;
        case PeriodType.biweekly:
          nextDate = nextDate.add(const Duration(days: 14));
          break;
        case PeriodType.monthly:
          // Add one month approximately (this is simplified)
          nextDate = DateTime(nextDate.year, nextDate.month + 1, nextDate.day);
          break;
      }
      _highlightedDates.add(nextDate);
    }
  }

  @override
  Widget build(BuildContext context) {
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
        TableCalendar(
          firstDay: _firstDay,
          lastDay: DateTime.now().add(
            const Duration(days: 365 * 2),
          ), // Allow selection up to 2 years in future
          focusedDay: _selectedDate,
          selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
          calendarFormat: CalendarFormat.month,
          startingDayOfWeek: StartingDayOfWeek.monday,
          headerStyle: const HeaderStyle(formatButtonVisible: false),
          calendarStyle: CalendarStyle(
            // Highlight selected date
            selectedDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            // Customize highlighted dates
            markerDecoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.7),
              shape: BoxShape.circle,
            ),
          ),
          enabledDayPredicate: (day) {
            // Only allow selection of future dates (greater than today)
            return day.isAfter(_firstDay) || day.isAtSameMomentAs(_firstDay);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (selectedDay.isBefore(_firstDay)) {
              // Don't allow selecting past dates
              return;
            }

            setState(() {
              _selectedDate = selectedDay;

              // Update the payload with the selected date
              widget.controller.payload.groupSavingsDay = _selectedDate;
              widget.controller.clearFieldError('groupSavingsDay');

              // Update the highlighted dates based on the new selection
              _updateHighlightedDates();
            });
          },
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, date, events) {
              // Show green markers for highlighted future meeting dates
              if (_highlightedDates.any((d) => isSameDay(date, d))) {
                return Positioned(
                  bottom: 1,
                  child: Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }
              return null;
            },
          ),
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
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.green.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                L10n.of(context).groupSchedule,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                L10n.of(context).futureSavingDates,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    _highlightedDates.take(5).map((date) {
                      return Chip(
                        backgroundColor: Colors.green.withValues(alpha: 0.2),
                        label: Text(
                          '${date.day}/${date.month}/${date.year}',
                          style: const TextStyle(fontSize: 12),
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
