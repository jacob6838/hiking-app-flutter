import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'location_accuracy_type.dart';
import 'location_status.dart';

part 'hike_metrics.freezed.dart';

@freezed
abstract class HikeMetrics with _$HikeMetrics {
  const factory HikeMetrics({
    @Default(0.0) double timeStartSec,
    @Default(0.0) double latitudeStart,
    @Default(0.0) double longitudeStart,
    @Default(0.0) double altitudeStart,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(0.0) double altitude,
    @Default(0.0) double speedMetersPerSec,
    @Default(0.0) double headingDegrees,
    @Default(LocationAccuracyType.low) LocationAccuracyType locationAccuracy,
    @Default(LocationAccuracyType.low) LocationAccuracyType speedAccuracy,
    @Default(0.0) double altitudeMax,
    @Default(0.0) double altitudeMin,
    @Default(0.0) double speedMax,
    @Default(0.0) double speedMin,
    @Default(0.0) double averageSpeedMetersPerSec,
    @Default(0.0) double netHeadingDegrees,
    @Default(0.0) double distanceTraveled,
    @Default(0.0) double netElevationChange,
    @Default(0.0) double cumulativeClimbMeters,
    @Default(0.0) double cumulativeDescentMeters,
    @Default(0.0) double metricPeriodSeconds,
    @Default(KtList.empty()) KtList<LocationStatus> path,
  }) = _HikeMetrics;
}
