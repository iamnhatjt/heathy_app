import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/blood_sugar/blood_sugar_bloc.dart';
import 'package:heathy_app/res/styles/colors.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';

class BloodChart extends StatelessWidget {
  const BloodChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BarChart(
        BarChartData(
          barTouchData: barTouchData(context),
          titlesData: titlesData,
          borderData: borderData,
          barGroups: barGroups(context),
          gridData: gridData,
          alignment: BarChartAlignment.spaceAround,
          minY: 10,
        ),
      ),
    );
  }

  FlGridData get gridData {
    return FlGridData(
      show: true,
      drawVerticalLine: false,
      getDrawingHorizontalLine: (value) => FlLine(
          strokeWidth: 1,
          dashArray: null,
          color: AppColors.blue.withOpacity(0.3)),
    );
  }

  BarTouchData barTouchData(BuildContext context) => BarTouchData(
        enabled: true,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.black,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            final listBlood = context.read<BloodSugarBloc>().listBloodSugars;
            final groupByDate = groupBy(listBlood,
                (blood) => blood.dateTime.sameDate.millisecondsSinceEpoch);
            final modelSeletected =
                groupByDate.values.toList()[groupIndex][rodIndex];
            context
                .read<BloodSugarBloc>()
                .add(BloodSugarEvent.onChangeSelected(modelSeletected));

            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: AppColors.blue,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = DateTime.fromMillisecondsSinceEpoch(value.toInt())
        .defaultFormat('d/MM');
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontSize: 8,
    );
    return SideTitleWidget(
      space: 12,
      axisSide: meta.axisSide,
      child: Text(value.toInt().toString(), style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getBottomTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getLeftTitles,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );
  FlBorderData get borderData => FlBorderData(
      show: true,
      border: Border(
          right: BorderSide.none,
          top: BorderSide.none,
          bottom: BorderSide(color: AppColors.blue.withOpacity(0.3))));

  List<BarChartGroupData> barGroups(BuildContext context) {
    final listBlood = context.watch<BloodSugarBloc>().listBloodSugars;
    final groupByDate = groupBy(
        listBlood, (blood) => blood.dateTime.sameDate.millisecondsSinceEpoch);
    return groupByDate.entries
        .map((e) => BarChartGroupData(
            x: e.key,
            barRods: e.value
                .map((e) => BarChartRodData(toY: e.bloodSugar ?? 0))
                .toList()))
        .toList();
  }
}
