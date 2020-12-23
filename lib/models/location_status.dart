import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_status.freezed.dart';

@freezed
abstract class LocationStatus with _$LocationStatus {
  const factory LocationStatus({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(0.0) double altitude,
    @Default(0.0) double bearingDegrees,
    @Default(0.0) double speedMetersPerSec,
    @Default(0.0) double hdop,
    @Default(0) int timeStampSec, // Milliseconds
  }) = _LocationStatus;
}
