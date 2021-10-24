import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';

part 'location_status.freezed.dart';
part 'location_status.g.dart';

@freezed
@JsonSerializable()
abstract class LocationStatus with _$LocationStatus {
  const factory LocationStatus({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(0.0) double accuracyValue,
    @Default(LocationAccuracyType.low) LocationAccuracyType accuracy,
    @Default(0.0) double altitude,
    @Default(0.0) double speedMetersPerSec,
    @Default(0.0) double speedAccuracyValue,
    @Default(LocationAccuracyType.low) LocationAccuracyType speedAccuracy,
    @Default(0.0) double headingDegrees,
    @Default(0.0) double timeStampSec,
  }) = _LocationStatus;

  factory LocationStatus.fromJson(Map<String, dynamic> json) => _$LocationStatusFromJson(json);
  Map<String, dynamic> toJson() => _$LocationStatusToJson(this);
}
