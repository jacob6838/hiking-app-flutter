import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_accuracy_type.dart';

part 'hiker_status.freezed.dart';

@freezed
abstract class HikerStatus with _$HikerStatus {
  const factory HikerStatus({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(0.0) double currentElevation,
    @Default(0.0) double distanceTraveledTotal,
    @Default(0.0) double distanceTraveledPeriod,
    @Default(0.0) double positiveElevationGainTotal,
    @Default(0.0) double positiveElevationGainPeriod,
    @Default(0.0) double negativeElevationGainTotal,
    @Default(0.0) double negativeElevationGainPeriod,
    @Default(0.0) double netElevationChangeTotal,
    @Default(0.0) double netElevationChangePeriod,
    @Default(0) int timeElapsedTotalSec,
    @Default(0) int timePeriodSec,
    @Default(LocationAccuracyType.low) LocationAccuracyType locationAccuracyType,
  }) = _HikerStatus;
}
