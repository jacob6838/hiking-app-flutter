// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hike_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HikeMetricsToJson(HikeMetrics instance) => <String, dynamic>{};

_$_HikeMetrics _$_$_HikeMetricsFromJson(Map<String, dynamic> json) {
  return _$_HikeMetrics(
    timeStartSec: (json['timeStartSec'] as num)?.toDouble() ?? 0.0,
    latitudeStart: (json['latitudeStart'] as num)?.toDouble() ?? 0.0,
    longitudeStart: (json['longitudeStart'] as num)?.toDouble() ?? 0.0,
    altitudeStart: (json['altitudeStart'] as num)?.toDouble() ?? 0.0,
    latitude: (json['latitude'] as num)?.toDouble() ?? 0.0,
    longitude: (json['longitude'] as num)?.toDouble() ?? 0.0,
    altitude: (json['altitude'] as num)?.toDouble() ?? 0.0,
    speedMetersPerSec: (json['speedMetersPerSec'] as num)?.toDouble() ?? 0.0,
    headingDegrees: (json['headingDegrees'] as num)?.toDouble() ?? 0.0,
    locationAccuracy: _$enumDecodeNullable(_$LocationAccuracyTypeEnumMap, json['locationAccuracy']) ?? LocationAccuracyType.low,
    speedAccuracy: _$enumDecodeNullable(_$LocationAccuracyTypeEnumMap, json['speedAccuracy']) ?? LocationAccuracyType.low,
    altitudeMax: (json['altitudeMax'] as num)?.toDouble() ?? 0.0,
    altitudeMin: (json['altitudeMin'] as num)?.toDouble() ?? 0.0,
    speedMax: (json['speedMax'] as num)?.toDouble() ?? 0.0,
    speedMin: (json['speedMin'] as num)?.toDouble() ?? 0.0,
    averageSpeedMetersPerSec: (json['averageSpeedMetersPerSec'] as num)?.toDouble() ?? 0.0,
    netHeadingDegrees: (json['netHeadingDegrees'] as num)?.toDouble() ?? 0.0,
    distanceTraveled: (json['distanceTraveled'] as num)?.toDouble() ?? 0.0,
    netElevationChange: (json['netElevationChange'] as num)?.toDouble() ?? 0.0,
    cumulativeClimbMeters: (json['cumulativeClimbMeters'] as num)?.toDouble() ?? 0.0,
    cumulativeDescentMeters: (json['cumulativeDescentMeters'] as num)?.toDouble() ?? 0.0,
    metricPeriodSeconds: (json['metricPeriodSeconds'] as num)?.toDouble() ?? 0.0,
  );
}

Map<String, dynamic> _$_$_HikeMetricsToJson(_$_HikeMetrics instance) => <String, dynamic>{
      'timeStartSec': instance.timeStartSec,
      'latitudeStart': instance.latitudeStart,
      'longitudeStart': instance.longitudeStart,
      'altitudeStart': instance.altitudeStart,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'speedMetersPerSec': instance.speedMetersPerSec,
      'headingDegrees': instance.headingDegrees,
      'locationAccuracy': _$LocationAccuracyTypeEnumMap[instance.locationAccuracy],
      'speedAccuracy': _$LocationAccuracyTypeEnumMap[instance.speedAccuracy],
      'altitudeMax': instance.altitudeMax,
      'altitudeMin': instance.altitudeMin,
      'speedMax': instance.speedMax,
      'speedMin': instance.speedMin,
      'averageSpeedMetersPerSec': instance.averageSpeedMetersPerSec,
      'netHeadingDegrees': instance.netHeadingDegrees,
      'distanceTraveled': instance.distanceTraveled,
      'netElevationChange': instance.netElevationChange,
      'cumulativeClimbMeters': instance.cumulativeClimbMeters,
      'cumulativeDescentMeters': instance.cumulativeDescentMeters,
      'metricPeriodSeconds': instance.metricPeriodSeconds,
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

  final value = enumValues.entries.singleWhere((e) => e.value == source, orElse: () => null)?.key;

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
