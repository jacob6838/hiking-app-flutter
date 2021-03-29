import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';

part 'plot_values.freezed.dart';

typedef String AxisFormat(double d);
typedef TextStyle AxisTextStyle(double d);

@freezed
abstract class PlotValues with _$PlotValues {
  const factory PlotValues._hidden({
    List<FlSpot> values,
    PlotFormat xFormat,
    PlotFormat yFormat,
    double height,
    double width,
  }) = _PlotValues;
  factory PlotValues.build({
    List<FlSpot> values,
    PlotFormat xFormat,
    PlotFormat yFormat,
    double height,
    double width,
  }) {
    return PlotValues._hidden(
      values: values ?? [FlSpot(0,0)],
        xFormat: xFormat ?? const PlotFormat(),
        yFormat: yFormat ?? const PlotFormat(),
        height: height ?? 140,
        width: width ?? 300,
    );
  }
}

@freezed
abstract class PlotFormat with _$PlotFormat {
  const factory PlotFormat({
    double min,
    double max,
    String axisTitle,
    AxisFormat axisFormatFunc,
    double interval,
    TextStyle axisTextStyle,
    AxisTextStyle axisTextStyleFunc,
  }) = _PlotFormat;
}