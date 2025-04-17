import 'package:flutter/material.dart';
import 'package:stawi/services/stawi/payloads/default_payloads.dart';
import 'package:table_calendar/table_calendar.dart';

/// A reusable calendar widget for group-related date selection.
///
/// This widget allows selection of a start date and automatically marks
/// subsequent dates based on the provided periodicity and tenure.
///
/// It can operate in read-only or editable mode:
/// - In editable mode, clicking a date sets it as the start date
/// - In read-only mode, the start date cannot be changed
class GroupCalendarWidget extends StatefulWidget {
  /// The initial start date for the group calendar
  final DateTime startDate;

  /// The period type (daily, weekly, biweekly, monthly)
  final PeriodType periodType;

  /// The group tenure in weeks (default is 52 weeks - 1 year)
  final int tenureWeeks;

  /// Whether the calendar is in read-only mode
  final bool readOnly;

  /// Callback when a new date is selected (only called in editable mode)
  final Function(DateTime)? onDateSelected;

  const GroupCalendarWidget({
    required this.startDate,
    required this.periodType,
    this.tenureWeeks = 52,
    this.readOnly = false,
    this.onDateSelected,
    super.key,
  });

  @override
  State<GroupCalendarWidget> createState() => _GroupCalendarWidgetState();
}

class _GroupCalendarWidgetState extends State<GroupCalendarWidget> {
  late DateTime _selectedDate;
  late DateTime _firstDay;
  late List<DateTime> _highlightedDates = [];

  @override
  void initState() {
    super.initState();
    _firstDay = DateTime.now();
    _selectedDate = widget.startDate;

    // Initialize highlighted dates
    _updateHighlightedDates();
  }

  @override
  void didUpdateWidget(GroupCalendarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update if props changed
    if (oldWidget.startDate != widget.startDate ||
        oldWidget.periodType != widget.periodType ||
        oldWidget.tenureWeeks != widget.tenureWeeks) {
      _selectedDate = widget.startDate;
      _updateHighlightedDates();
    }
  }

  void _updateHighlightedDates() {
    // Clear previous highlighted dates
    _highlightedDates = [];

    // Get period type from widget
    final periodType = widget.periodType;

    // Add dates based on the tenure and period type
    var nextDate = _selectedDate;

    // Calculate how many period intervals to show based on tenure
    int intervalsToShow;
    switch (periodType) {
      case PeriodType.daily:
        intervalsToShow = widget.tenureWeeks * 7; // Daily for tenure weeks
        break;
      case PeriodType.weekly:
        intervalsToShow = widget.tenureWeeks; // Weekly for tenure weeks
        break;
      case PeriodType.biweekly:
        intervalsToShow =
            (widget.tenureWeeks / 2).ceil(); // Biweekly for tenure weeks
        break;
      case PeriodType.monthly:
        intervalsToShow =
            (widget.tenureWeeks / 4.33)
                .ceil(); // Approximately monthly for tenure weeks
        break;
    }

    // Limit to reasonable number of displayed dates
    intervalsToShow = intervalsToShow.clamp(0, 30);

    for (var i = 0; i < intervalsToShow; i++) {
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
          // Add one month approximately
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
            // Only allow selection of future dates in editable mode
            if (widget.readOnly) {
              return false; // Disable selection in read-only mode
            }
            return day.isAfter(_firstDay) || day.isAtSameMomentAs(_firstDay);
          },
          onDaySelected:
              widget.readOnly
                  ? null
                  : (selectedDay, focusedDay) {
                    if (selectedDay.isBefore(_firstDay)) {
                      // Don't allow selecting past dates
                      return;
                    }

                    setState(() {
                      _selectedDate = selectedDay;
                      // Update the highlighted dates based on the new selection
                      _updateHighlightedDates();
                    });

                    // Notify parent about date selection
                    if (widget.onDateSelected != null) {
                      widget.onDateSelected!(_selectedDate);
                    }
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
      ],
    );
  }
}
