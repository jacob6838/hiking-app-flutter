import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/models/plot_values.dart';

import '../../hiking_service.dart';
import '../../hiking_service_conversions.dart';

class MetricPlot extends StatefulWidget {
  const MetricPlot({Key key, this.hikingService, this.plotValues}) : super(key: key);

  final HikingService hikingService;
  final PlotValues plotValues;

  @override
  MetricPlotState createState() => MetricPlotState();
}

class MetricPlotState extends State<MetricPlot> {

  @override
  Widget build(BuildContext context) {

    final plotValues = widget.plotValues;

    return SizedBox(
      width: plotValues.width,
      height: plotValues.height,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: plotValues.values.map((it) => FlSpot(it[0], it[1]))
                  .toList(),
              // isCurved: true,
              barWidth: 3,
              colors: [
                Colors.purpleAccent,
              ],
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          minX: plotValues.xFormat.min,
          maxX: plotValues.xFormat.max,
          minY: plotValues.yFormat.min,
          maxY: plotValues.yFormat.max,
          // minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 14,
              interval: plotValues.xFormat.interval,
              getTitles: (value) {
                final int minutes = (value / secPerMin).round() % minPerHour;
                final int hours = ((value / secPerMin) / minPerHour).floor();
                return "$hours:$minutes";
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              interval: plotValues.yFormat.interval,
            ),
          ),
          axisTitleData: FlAxisTitleData(
            bottomTitle: AxisTitle(
                showTitle: true,
                margin: 0,
                titleText: plotValues.xFormat.axisTitle,
                textAlign: TextAlign.right),
            leftTitle: AxisTitle(
                showTitle: true,
                titleText: plotValues.yFormat.axisTitle,
                margin: 4),
          ),
          gridData: FlGridData(
            show: true,
            checkToShowHorizontalLine: (double value) {
              return value == 1 || value == 6 || value == 4 || value == 5;
            },
          ),
        ),
      ),
    );
  }
}