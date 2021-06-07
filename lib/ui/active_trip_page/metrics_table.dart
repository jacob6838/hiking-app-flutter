import 'package:flutter/material.dart';
import 'package:hiking_app/models/hike_metrics.dart';

import '../../hiking_service.dart';
import '../../hiking_service_conversions.dart';

class MetricsTable extends StatefulWidget {
  const MetricsTable({Key key, this.hikingService, this.metricsHiddenMap}) : super(key: key);

  final HikingService hikingService;
  final List<bool> metricsHiddenMap;

  @override
  _MetricsTableState createState() => _MetricsTableState();
}

class _MetricsTableState extends State<MetricsTable> {
  HikeMetricsData hikeMetrics = const HikeMetricsData();
  HikingServiceConversions hikeMetricsConversions = HikingServiceConversions();

  @override
  Widget build(BuildContext context) {
    const dataRowFontSize = 15.0;
    const dataRowHeightPadding = 10;
    // return Container();
    return
    //   SizedBox.expand(
    //   child:
      StreamBuilder<HikeMetricsData>(
        stream: widget.hikingService.currentHikerMetrics$.map(hikeMetricsConversions.metricsToData),
        builder: (context, snapshot) {
          return DataTable(
            dataRowHeight: dataRowFontSize + dataRowHeightPadding,
            headingRowHeight: (dataRowFontSize + dataRowHeightPadding) * 1.2,
            dataTextStyle: const TextStyle(
              fontSize: dataRowFontSize,
              color: Colors.black,
              // height: 1
            ),
            headingTextStyle: const TextStyle(
              fontSize: dataRowFontSize,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              // height: 1
            ),
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  "Metric"
                )
              ),
              DataColumn(
                label: Text(
                  "Value"
                )
              )
            ],
            rows: getDataRows(snapshot.data, widget.metricsHiddenMap)
          );
        }
      // ),
    );
  }

  List<DataRow> getDataRows(HikeMetricsData hikeMetrics, List<bool> metricsHiddenMap) {
    if (hikeMetrics == null) return <DataRow>[];
    final vals = List<int>.generate(22, (i) => i + 1);
    final rows = <DataRow>[];
    for (int i in vals) {
      final metric = getHikeMetricsValue(i, hikeMetrics);
      if (metric == null || !metric.visible) continue;
      rows.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(metric.name)),
          DataCell(Text(metric.value)),
        ]
      ));
    }
    return rows;
  }

  Metric getHikeMetricsValue(int index, HikeMetricsData hikeMetrics) {
    switch (index) {
      case 15:
        return hikeMetrics.timeStartSec;
      case 16:
        return hikeMetrics.latitudeStart;
      case 17:
        return hikeMetrics.longitudeStart;
      case 18:
        return hikeMetrics.altitudeStart;
      case 1:
        return hikeMetrics.latitude;
      case 2:
        return hikeMetrics.longitude;
      case 0:
        return hikeMetrics.altitude;
      case 3:
        return hikeMetrics.speedMetersPerSec;
      case 19:
        return hikeMetrics.headingDegrees;
      case 4:
        return hikeMetrics.locationAccuracy;
      case 20:
        return hikeMetrics.speedAccuracy;
      case 11:
        return hikeMetrics.altitudeMax;
      case 10:
        return hikeMetrics.altitudeMin;
      case 13:
        return hikeMetrics.speedMax;
      case 21:
        return hikeMetrics.speedMin;
      case 12:
        return hikeMetrics.averageSpeedMetersPerSec;
      case 14:
        return hikeMetrics.netHeadingDegrees;
      case 6:
        return hikeMetrics.distanceTraveled;
      case 7:
        return hikeMetrics.netElevationChange;
      case 8:
        return hikeMetrics.cumulativeClimbMeters;
      case 9:
        return hikeMetrics.cumulativeDescentMeters;
      case 5:
        return hikeMetrics.metricPeriodSeconds;
    }
    return null;
  }
}
