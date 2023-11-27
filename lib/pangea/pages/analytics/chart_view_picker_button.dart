// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';

// Project imports:
import '../../enum/bar_chart_view_enum.dart';

class ChartViewPickerButton extends StatelessWidget {
  final BarChartViewSelection selected;
  final void Function(BarChartViewSelection) onChange;
  const ChartViewPickerButton(
      {Key? key, required this.selected, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<BarChartViewSelection>(
      icon: Icon(selected.icon),
      tooltip: L10n.of(context)!.changeView,
      initialValue: selected,
      onSelected: (BarChartViewSelection? barChartView) {
        if (barChartView == null) {
          debugPrint("when is barChartView null?");
          return;
        }
        onChange(barChartView);
      },
      itemBuilder: (BuildContext context) => BarChartViewSelection.values
          .map<PopupMenuEntry<BarChartViewSelection>>(
              (BarChartViewSelection barChartView) {
        return PopupMenuItem<BarChartViewSelection>(
          value: barChartView,
          child: Text(barChartView.string(context)),
        );
      }).toList(),
    );
  }
}
