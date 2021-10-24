// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$LocationStatusToJson(LocationStatus instance) =>
    <String, dynamic>{};

_$_LocationStatus _$_$_LocationStatusFromJson(Map<String, dynamic> json) {
  return _$_LocationStatus(
    latitude: (json['latitude'] as num)?.toDouble() ?? 0.0,
    longitude: (json['longitude'] as num)?.toDouble() ?? 0.0,
    accuracyValue: (json['accuracyValue'] as num)?.toDouble() ?? 0.0,
    accuracy:
        _$enumDecodeNullable(_$LocationAccuracyTypeEnumMap, json['accuracy']) ??
            LocationAccuracyType.low,
    altitude: (json['altitude'] as num)?.toDouble() ?? 0.0,
    speedMetersPerSec: (json['speedMetersPerSec'] as num)?.toDouble() ?? 0.0,
    speedAccuracyValue: (json['speedAccuracyValue'] as num)?.toDouble() ?? 0.0,
    speedAccuracy: _$enumDecodeNullable(
            _$LocationAccuracyTypeEnumMap, json['speedAccuracy']) ??
        LocationAccuracyType.low,
    headingDegrees: (json['headingDegrees'] as num)?.toDouble() ?? 0.0,
    timeStampSec: (json['timeStampSec'] as num)?.toDouble() ?? 0.0,
  );
}

Map<String, dynamic> _$_$_LocationStatusToJson(_$_LocationStatus instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracyValue': instance.accuracyValue,
      'accuracy': _$LocationAccuracyTypeEnumMap[instance.accuracy],
      'altitude': instance.altitude,
      'speedMetersPerSec': instance.speedMetersPerSec,
      'speedAccuracyValue': instance.speedAccuracyValue,
      'speedAccuracy': _$LocationAccuracyTypeEnumMap[instance.speedAccuracy],
      'headingDegrees': instance.headingDegrees,
      'timeStampSec': instance.timeStampSec,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$LocationAccuracyTypeEnumMap = {
  LocationAccuracyType.high: 'high',
  LocationAccuracyType.medium: 'medium',
  LocationAccuracyType.low: 'low',
};
