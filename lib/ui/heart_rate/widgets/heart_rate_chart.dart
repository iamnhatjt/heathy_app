import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/heart_rate/heart_rate_bloc.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:intl/intl.dart';

final class HeartRateChartDialog extends StatelessWidget {
  const HeartRateChartDialog({
    super.key,
    required this.listHeartRate,
  });
  final List<HeartRateModel> listHeartRate;

  LineTouchData lineTouchData(BuildContext context) {
    return LineTouchData(
      enabled: false,
      handleBuiltInTouches: false,
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
      ),
      touchCallback: (flTouchEvent, touchResponse) {
        if ((touchResponse?.lineBarSpots ?? []).isNotEmpty) {
          final groupByDate = groupBy(
              listHeartRate,
              (heartRate) =>
                  heartRate.dateTime.sameDate.millisecondsSinceEpoch);
          TouchLineBarSpot touchLineBarSpot =
              touchResponse!.lineBarSpots!.first;

          final currentModel = groupByDate.entries
              .toList()[touchLineBarSpot.barIndex]
              .value
              .last;

          context
              .read<HeartRateBloc>()
              .add(HeartRateEvent.changeSelected(currentModel));
        }
      },
      getTouchedSpotIndicator: (barData, spotIndexes) {
        return spotIndexes.map((int index) {
          var lineColor = barData.gradient?.colors.first ?? barData.color;
          if (barData.dotData.show) {
            lineColor = Colors.transparent;
          }
          const lineStrokeWidth = 4.0;
          final flLine = FlLine(color: lineColor, strokeWidth: lineStrokeWidth);
          final dotData = FlDotData(
              getDotPainter: (spot, percent, bar, index) => FlDotCirclePainter(
                    radius: 7.0,
                    color: Colors.transparent,
                    strokeColor: Colors.transparent,
                  ));

          return TouchedSpotIndicatorData(flLine, dotData);
        }).toList();
      },
    );
  }

  FlGridData get gridDate => FlGridData(
        drawHorizontalLine: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) => const FlLine(
            color: Color.fromARGB(255, 109, 146, 225),
            strokeWidth: 1,
            dashArray: null),
      );

  FlTitlesData get titleData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: bottomTitleWidget,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftSideWidget,
            // interval: 1,
            // reservedSize: 50
          ),
        ),
      );

  Widget leftSideWidget(double value, TitleMeta meta) {
    TextStyle style = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
    );
    String text;
    switch (value.toInt()) {
      case 50:
        text = '50';
        break;
      case 100:
        text = '100';
        break;
      case 150:
        text = '150';
        break;
      case 200:
        text = '200';
        break;
      case 250:
        text = '250';
        break;
      default:
        return const SizedBox.shrink();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  Widget bottomTitleWidget(double value, TitleMeta meta) {
    final convertToDate = DateTime.fromMillisecondsSinceEpoch(value.toInt());
    final displayDateTime = DateFormat('dd/MM').format(convertToDate);
    if (!listHeartRate.any((element) =>
        element.dateTime!.sameDate.millisecondsSinceEpoch ==
        convertToDate.sameDate.millisecondsSinceEpoch)) {
      return const SizedBox.shrink();
    }

    return SideTitleWidget(
        angle: 100,
        space: 8,
        axisSide: meta.axisSide,
        child: BaseRoundedButton.all(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            margin: EdgeInsets.zero,
            backgroundColor: Colors.blueAccent,
            child: Text(
              displayDateTime,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            )));
  }

  List<LineChartBarData> lineBarsData(BuildContext context) {
    final groupByDate = groupBy(listHeartRate,
        (heartRate) => heartRate.dateTime.sameDate.millisecondsSinceEpoch);
    return groupByDate.entries
        .map((e) => LineChartBarData(
            spots: e.value
                .map((e) => FlSpot(
                      e.dateTime.sameDate.millisecondsSinceEpoch.toDouble(),
                      e.heartRate?.toDouble() ?? 0,
                    ))
                .toList()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          lineTouchData: lineTouchData(context),
          titlesData: titleData1,
          gridData: gridDate,
          lineBarsData: lineBarsData(context),
          maxY: 251,
          minY: 40,
          minX: context
              .read<HeartRateBloc>()
              .dateRange
              .start
              .millisecondsSinceEpoch
              .toDouble(),
          maxX: context
              .read<HeartRateBloc>()
              .dateRange
              .end
              .add(const Duration(days: 2))
              .millisecondsSinceEpoch
              .toDouble(),
          borderData: FlBorderData(show: false)),

      duration: const Duration(milliseconds: 150), // Optional
    );
  }
}
