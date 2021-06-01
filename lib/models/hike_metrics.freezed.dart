// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hike_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HikeMetrics _$HikeMetricsFromJson(Map<String, dynamic> json) {
  return _HikeMetrics.fromJson(json);
}

/// @nodoc
class _$HikeMetricsTearOff {
  const _$HikeMetricsTearOff();

// ignore: unused_element
  _HikeMetrics call(
      {double timeStartSec = 0.0,
      double latitudeStart = 0.0,
      double longitudeStart = 0.0,
      double altitudeStart = 0.0,
      double latitude = 0.0,
      double longitude = 0.0,
      double altitude = 0.0,
      double speedMetersPerSec = 0.0,
      double headingDegrees = 0.0,
      LocationAccuracyType locationAccuracy = LocationAccuracyType.low,
      LocationAccuracyType speedAccuracy = LocationAccuracyType.low,
      double altitudeMax = 0.0,
      double altitudeMin = 0.0,
      double speedMax = 0.0,
      double speedMin = 0.0,
      double averageSpeedMetersPerSec = 0.0,
      double netHeadingDegrees = 0.0,
      double distanceTraveled = 0.0,
      double netElevationChange = 0.0,
      double cumulativeClimbMeters = 0.0,
      double cumulativeDescentMeters = 0.0,
      double metricPeriodSeconds = 0.0}) {
    return _HikeMetrics(
      timeStartSec: timeStartSec,
      latitudeStart: latitudeStart,
      longitudeStart: longitudeStart,
      altitudeStart: altitudeStart,
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
      speedMetersPerSec: speedMetersPerSec,
      headingDegrees: headingDegrees,
      locationAccuracy: locationAccuracy,
      speedAccuracy: speedAccuracy,
      altitudeMax: altitudeMax,
      altitudeMin: altitudeMin,
      speedMax: speedMax,
      speedMin: speedMin,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec,
      netHeadingDegrees: netHeadingDegrees,
      distanceTraveled: distanceTraveled,
      netElevationChange: netElevationChange,
      cumulativeClimbMeters: cumulativeClimbMeters,
      cumulativeDescentMeters: cumulativeDescentMeters,
      metricPeriodSeconds: metricPeriodSeconds,
    );
  }

// ignore: unused_element
  HikeMetrics fromJson(Map<String, Object> json) {
    return HikeMetrics.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HikeMetrics = _$HikeMetricsTearOff();

/// @nodoc
mixin _$HikeMetrics {
  double get timeStartSec;
  double get latitudeStart;
  double get longitudeStart;
  double get altitudeStart;
  double get latitude;
  double get longitude;
  double get altitude;
  double get speedMetersPerSec;
  double get headingDegrees;
  LocationAccuracyType get locationAccuracy;
  LocationAccuracyType get speedAccuracy;
  double get altitudeMax;
  double get altitudeMin;
  double get speedMax;
  double get speedMin;
  double get averageSpeedMetersPerSec;
  double get netHeadingDegrees;
  double get distanceTraveled;
  double get netElevationChange;
  double get cumulativeClimbMeters;
  double get cumulativeDescentMeters;
  double get metricPeriodSeconds;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HikeMetricsCopyWith<HikeMetrics> get copyWith;
}

/// @nodoc
abstract class $HikeMetricsCopyWith<$Res> {
  factory $HikeMetricsCopyWith(
          HikeMetrics value, $Res Function(HikeMetrics) then) =
      _$HikeMetricsCopyWithImpl<$Res>;
  $Res call(
      {double timeStartSec,
      double latitudeStart,
      double longitudeStart,
      double altitudeStart,
      double latitude,
      double longitude,
      double altitude,
      double speedMetersPerSec,
      double headingDegrees,
      LocationAccuracyType locationAccuracy,
      LocationAccuracyType speedAccuracy,
      double altitudeMax,
      double altitudeMin,
      double speedMax,
      double speedMin,
      double averageSpeedMetersPerSec,
      double netHeadingDegrees,
      double distanceTraveled,
      double netElevationChange,
      double cumulativeClimbMeters,
      double cumulativeDescentMeters,
      double metricPeriodSeconds});
}

/// @nodoc
class _$HikeMetricsCopyWithImpl<$Res> implements $HikeMetricsCopyWith<$Res> {
  _$HikeMetricsCopyWithImpl(this._value, this._then);

  final HikeMetrics _value;
  // ignore: unused_field
  final $Res Function(HikeMetrics) _then;

  @override
  $Res call({
    Object timeStartSec = freezed,
    Object latitudeStart = freezed,
    Object longitudeStart = freezed,
    Object altitudeStart = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object headingDegrees = freezed,
    Object locationAccuracy = freezed,
    Object speedAccuracy = freezed,
    Object altitudeMax = freezed,
    Object altitudeMin = freezed,
    Object speedMax = freezed,
    Object speedMin = freezed,
    Object averageSpeedMetersPerSec = freezed,
    Object netHeadingDegrees = freezed,
    Object distanceTraveled = freezed,
    Object netElevationChange = freezed,
    Object cumulativeClimbMeters = freezed,
    Object cumulativeDescentMeters = freezed,
    Object metricPeriodSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      timeStartSec: timeStartSec == freezed
          ? _value.timeStartSec
          : timeStartSec as double,
      latitudeStart: latitudeStart == freezed
          ? _value.latitudeStart
          : latitudeStart as double,
      longitudeStart: longitudeStart == freezed
          ? _value.longitudeStart
          : longitudeStart as double,
      altitudeStart: altitudeStart == freezed
          ? _value.altitudeStart
          : altitudeStart as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      altitude: altitude == freezed ? _value.altitude : altitude as double,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as double,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as double,
      locationAccuracy: locationAccuracy == freezed
          ? _value.locationAccuracy
          : locationAccuracy as LocationAccuracyType,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as LocationAccuracyType,
      altitudeMax:
          altitudeMax == freezed ? _value.altitudeMax : altitudeMax as double,
      altitudeMin:
          altitudeMin == freezed ? _value.altitudeMin : altitudeMin as double,
      speedMax: speedMax == freezed ? _value.speedMax : speedMax as double,
      speedMin: speedMin == freezed ? _value.speedMin : speedMin as double,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec == freezed
          ? _value.averageSpeedMetersPerSec
          : averageSpeedMetersPerSec as double,
      netHeadingDegrees: netHeadingDegrees == freezed
          ? _value.netHeadingDegrees
          : netHeadingDegrees as double,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled as double,
      netElevationChange: netElevationChange == freezed
          ? _value.netElevationChange
          : netElevationChange as double,
      cumulativeClimbMeters: cumulativeClimbMeters == freezed
          ? _value.cumulativeClimbMeters
          : cumulativeClimbMeters as double,
      cumulativeDescentMeters: cumulativeDescentMeters == freezed
          ? _value.cumulativeDescentMeters
          : cumulativeDescentMeters as double,
      metricPeriodSeconds: metricPeriodSeconds == freezed
          ? _value.metricPeriodSeconds
          : metricPeriodSeconds as double,
    ));
  }
}

/// @nodoc
abstract class _$HikeMetricsCopyWith<$Res>
    implements $HikeMetricsCopyWith<$Res> {
  factory _$HikeMetricsCopyWith(
          _HikeMetrics value, $Res Function(_HikeMetrics) then) =
      __$HikeMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double timeStartSec,
      double latitudeStart,
      double longitudeStart,
      double altitudeStart,
      double latitude,
      double longitude,
      double altitude,
      double speedMetersPerSec,
      double headingDegrees,
      LocationAccuracyType locationAccuracy,
      LocationAccuracyType speedAccuracy,
      double altitudeMax,
      double altitudeMin,
      double speedMax,
      double speedMin,
      double averageSpeedMetersPerSec,
      double netHeadingDegrees,
      double distanceTraveled,
      double netElevationChange,
      double cumulativeClimbMeters,
      double cumulativeDescentMeters,
      double metricPeriodSeconds});
}

/// @nodoc
class __$HikeMetricsCopyWithImpl<$Res> extends _$HikeMetricsCopyWithImpl<$Res>
    implements _$HikeMetricsCopyWith<$Res> {
  __$HikeMetricsCopyWithImpl(
      _HikeMetrics _value, $Res Function(_HikeMetrics) _then)
      : super(_value, (v) => _then(v as _HikeMetrics));

  @override
  _HikeMetrics get _value => super._value as _HikeMetrics;

  @override
  $Res call({
    Object timeStartSec = freezed,
    Object latitudeStart = freezed,
    Object longitudeStart = freezed,
    Object altitudeStart = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object headingDegrees = freezed,
    Object locationAccuracy = freezed,
    Object speedAccuracy = freezed,
    Object altitudeMax = freezed,
    Object altitudeMin = freezed,
    Object speedMax = freezed,
    Object speedMin = freezed,
    Object averageSpeedMetersPerSec = freezed,
    Object netHeadingDegrees = freezed,
    Object distanceTraveled = freezed,
    Object netElevationChange = freezed,
    Object cumulativeClimbMeters = freezed,
    Object cumulativeDescentMeters = freezed,
    Object metricPeriodSeconds = freezed,
  }) {
    return _then(_HikeMetrics(
      timeStartSec: timeStartSec == freezed
          ? _value.timeStartSec
          : timeStartSec as double,
      latitudeStart: latitudeStart == freezed
          ? _value.latitudeStart
          : latitudeStart as double,
      longitudeStart: longitudeStart == freezed
          ? _value.longitudeStart
          : longitudeStart as double,
      altitudeStart: altitudeStart == freezed
          ? _value.altitudeStart
          : altitudeStart as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      altitude: altitude == freezed ? _value.altitude : altitude as double,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as double,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as double,
      locationAccuracy: locationAccuracy == freezed
          ? _value.locationAccuracy
          : locationAccuracy as LocationAccuracyType,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as LocationAccuracyType,
      altitudeMax:
          altitudeMax == freezed ? _value.altitudeMax : altitudeMax as double,
      altitudeMin:
          altitudeMin == freezed ? _value.altitudeMin : altitudeMin as double,
      speedMax: speedMax == freezed ? _value.speedMax : speedMax as double,
      speedMin: speedMin == freezed ? _value.speedMin : speedMin as double,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec == freezed
          ? _value.averageSpeedMetersPerSec
          : averageSpeedMetersPerSec as double,
      netHeadingDegrees: netHeadingDegrees == freezed
          ? _value.netHeadingDegrees
          : netHeadingDegrees as double,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled as double,
      netElevationChange: netElevationChange == freezed
          ? _value.netElevationChange
          : netElevationChange as double,
      cumulativeClimbMeters: cumulativeClimbMeters == freezed
          ? _value.cumulativeClimbMeters
          : cumulativeClimbMeters as double,
      cumulativeDescentMeters: cumulativeDescentMeters == freezed
          ? _value.cumulativeDescentMeters
          : cumulativeDescentMeters as double,
      metricPeriodSeconds: metricPeriodSeconds == freezed
          ? _value.metricPeriodSeconds
          : metricPeriodSeconds as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HikeMetrics implements _HikeMetrics {
  const _$_HikeMetrics(
      {this.timeStartSec = 0.0,
      this.latitudeStart = 0.0,
      this.longitudeStart = 0.0,
      this.altitudeStart = 0.0,
      this.latitude = 0.0,
      this.longitude = 0.0,
      this.altitude = 0.0,
      this.speedMetersPerSec = 0.0,
      this.headingDegrees = 0.0,
      this.locationAccuracy = LocationAccuracyType.low,
      this.speedAccuracy = LocationAccuracyType.low,
      this.altitudeMax = 0.0,
      this.altitudeMin = 0.0,
      this.speedMax = 0.0,
      this.speedMin = 0.0,
      this.averageSpeedMetersPerSec = 0.0,
      this.netHeadingDegrees = 0.0,
      this.distanceTraveled = 0.0,
      this.netElevationChange = 0.0,
      this.cumulativeClimbMeters = 0.0,
      this.cumulativeDescentMeters = 0.0,
      this.metricPeriodSeconds = 0.0})
      : assert(timeStartSec != null),
        assert(latitudeStart != null),
        assert(longitudeStart != null),
        assert(altitudeStart != null),
        assert(latitude != null),
        assert(longitude != null),
        assert(altitude != null),
        assert(speedMetersPerSec != null),
        assert(headingDegrees != null),
        assert(locationAccuracy != null),
        assert(speedAccuracy != null),
        assert(altitudeMax != null),
        assert(altitudeMin != null),
        assert(speedMax != null),
        assert(speedMin != null),
        assert(averageSpeedMetersPerSec != null),
        assert(netHeadingDegrees != null),
        assert(distanceTraveled != null),
        assert(netElevationChange != null),
        assert(cumulativeClimbMeters != null),
        assert(cumulativeDescentMeters != null),
        assert(metricPeriodSeconds != null);

  factory _$_HikeMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_HikeMetricsFromJson(json);

  @JsonKey(defaultValue: 0.0)
  @override
  final double timeStartSec;
  @JsonKey(defaultValue: 0.0)
  @override
  final double latitudeStart;
  @JsonKey(defaultValue: 0.0)
  @override
  final double longitudeStart;
  @JsonKey(defaultValue: 0.0)
  @override
  final double altitudeStart;
  @JsonKey(defaultValue: 0.0)
  @override
  final double latitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double longitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double altitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double speedMetersPerSec;
  @JsonKey(defaultValue: 0.0)
  @override
  final double headingDegrees;
  @JsonKey(defaultValue: LocationAccuracyType.low)
  @override
  final LocationAccuracyType locationAccuracy;
  @JsonKey(defaultValue: LocationAccuracyType.low)
  @override
  final LocationAccuracyType speedAccuracy;
  @JsonKey(defaultValue: 0.0)
  @override
  final double altitudeMax;
  @JsonKey(defaultValue: 0.0)
  @override
  final double altitudeMin;
  @JsonKey(defaultValue: 0.0)
  @override
  final double speedMax;
  @JsonKey(defaultValue: 0.0)
  @override
  final double speedMin;
  @JsonKey(defaultValue: 0.0)
  @override
  final double averageSpeedMetersPerSec;
  @JsonKey(defaultValue: 0.0)
  @override
  final double netHeadingDegrees;
  @JsonKey(defaultValue: 0.0)
  @override
  final double distanceTraveled;
  @JsonKey(defaultValue: 0.0)
  @override
  final double netElevationChange;
  @JsonKey(defaultValue: 0.0)
  @override
  final double cumulativeClimbMeters;
  @JsonKey(defaultValue: 0.0)
  @override
  final double cumulativeDescentMeters;
  @JsonKey(defaultValue: 0.0)
  @override
  final double metricPeriodSeconds;

  @override
  String toString() {
    return 'HikeMetrics(timeStartSec: $timeStartSec, latitudeStart: $latitudeStart, longitudeStart: $longitudeStart, altitudeStart: $altitudeStart, latitude: $latitude, longitude: $longitude, altitude: $altitude, speedMetersPerSec: $speedMetersPerSec, headingDegrees: $headingDegrees, locationAccuracy: $locationAccuracy, speedAccuracy: $speedAccuracy, altitudeMax: $altitudeMax, altitudeMin: $altitudeMin, speedMax: $speedMax, speedMin: $speedMin, averageSpeedMetersPerSec: $averageSpeedMetersPerSec, netHeadingDegrees: $netHeadingDegrees, distanceTraveled: $distanceTraveled, netElevationChange: $netElevationChange, cumulativeClimbMeters: $cumulativeClimbMeters, cumulativeDescentMeters: $cumulativeDescentMeters, metricPeriodSeconds: $metricPeriodSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HikeMetrics &&
            (identical(other.timeStartSec, timeStartSec) ||
                const DeepCollectionEquality()
                    .equals(other.timeStartSec, timeStartSec)) &&
            (identical(other.latitudeStart, latitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.latitudeStart, latitudeStart)) &&
            (identical(other.longitudeStart, longitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.longitudeStart, longitudeStart)) &&
            (identical(other.altitudeStart, altitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeStart, altitudeStart)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.speedMetersPerSec, speedMetersPerSec) ||
                const DeepCollectionEquality()
                    .equals(other.speedMetersPerSec, speedMetersPerSec)) &&
            (identical(other.headingDegrees, headingDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.headingDegrees, headingDegrees)) &&
            (identical(other.locationAccuracy, locationAccuracy) ||
                const DeepCollectionEquality()
                    .equals(other.locationAccuracy, locationAccuracy)) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                const DeepCollectionEquality()
                    .equals(other.speedAccuracy, speedAccuracy)) &&
            (identical(other.altitudeMax, altitudeMax) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeMax, altitudeMax)) &&
            (identical(other.altitudeMin, altitudeMin) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeMin, altitudeMin)) &&
            (identical(other.speedMax, speedMax) ||
                const DeepCollectionEquality()
                    .equals(other.speedMax, speedMax)) &&
            (identical(other.speedMin, speedMin) ||
                const DeepCollectionEquality()
                    .equals(other.speedMin, speedMin)) &&
            (identical(other.averageSpeedMetersPerSec, averageSpeedMetersPerSec) ||
                const DeepCollectionEquality().equals(
                    other.averageSpeedMetersPerSec,
                    averageSpeedMetersPerSec)) &&
            (identical(other.netHeadingDegrees, netHeadingDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.netHeadingDegrees, netHeadingDegrees)) &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                const DeepCollectionEquality()
                    .equals(other.distanceTraveled, distanceTraveled)) &&
            (identical(other.netElevationChange, netElevationChange) ||
                const DeepCollectionEquality()
                    .equals(other.netElevationChange, netElevationChange)) &&
            (identical(other.cumulativeClimbMeters, cumulativeClimbMeters) ||
                const DeepCollectionEquality().equals(
                    other.cumulativeClimbMeters, cumulativeClimbMeters)) &&
            (identical(other.cumulativeDescentMeters, cumulativeDescentMeters) || const DeepCollectionEquality().equals(other.cumulativeDescentMeters, cumulativeDescentMeters)) &&
            (identical(other.metricPeriodSeconds, metricPeriodSeconds) || const DeepCollectionEquality().equals(other.metricPeriodSeconds, metricPeriodSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timeStartSec) ^
      const DeepCollectionEquality().hash(latitudeStart) ^
      const DeepCollectionEquality().hash(longitudeStart) ^
      const DeepCollectionEquality().hash(altitudeStart) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(altitude) ^
      const DeepCollectionEquality().hash(speedMetersPerSec) ^
      const DeepCollectionEquality().hash(headingDegrees) ^
      const DeepCollectionEquality().hash(locationAccuracy) ^
      const DeepCollectionEquality().hash(speedAccuracy) ^
      const DeepCollectionEquality().hash(altitudeMax) ^
      const DeepCollectionEquality().hash(altitudeMin) ^
      const DeepCollectionEquality().hash(speedMax) ^
      const DeepCollectionEquality().hash(speedMin) ^
      const DeepCollectionEquality().hash(averageSpeedMetersPerSec) ^
      const DeepCollectionEquality().hash(netHeadingDegrees) ^
      const DeepCollectionEquality().hash(distanceTraveled) ^
      const DeepCollectionEquality().hash(netElevationChange) ^
      const DeepCollectionEquality().hash(cumulativeClimbMeters) ^
      const DeepCollectionEquality().hash(cumulativeDescentMeters) ^
      const DeepCollectionEquality().hash(metricPeriodSeconds);

  @JsonKey(ignore: true)
  @override
  _$HikeMetricsCopyWith<_HikeMetrics> get copyWith =>
      __$HikeMetricsCopyWithImpl<_HikeMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HikeMetricsToJson(this);
  }
}

abstract class _HikeMetrics implements HikeMetrics {
  const factory _HikeMetrics(
      {double timeStartSec,
      double latitudeStart,
      double longitudeStart,
      double altitudeStart,
      double latitude,
      double longitude,
      double altitude,
      double speedMetersPerSec,
      double headingDegrees,
      LocationAccuracyType locationAccuracy,
      LocationAccuracyType speedAccuracy,
      double altitudeMax,
      double altitudeMin,
      double speedMax,
      double speedMin,
      double averageSpeedMetersPerSec,
      double netHeadingDegrees,
      double distanceTraveled,
      double netElevationChange,
      double cumulativeClimbMeters,
      double cumulativeDescentMeters,
      double metricPeriodSeconds}) = _$_HikeMetrics;

  factory _HikeMetrics.fromJson(Map<String, dynamic> json) =
      _$_HikeMetrics.fromJson;

  @override
  double get timeStartSec;
  @override
  double get latitudeStart;
  @override
  double get longitudeStart;
  @override
  double get altitudeStart;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get altitude;
  @override
  double get speedMetersPerSec;
  @override
  double get headingDegrees;
  @override
  LocationAccuracyType get locationAccuracy;
  @override
  LocationAccuracyType get speedAccuracy;
  @override
  double get altitudeMax;
  @override
  double get altitudeMin;
  @override
  double get speedMax;
  @override
  double get speedMin;
  @override
  double get averageSpeedMetersPerSec;
  @override
  double get netHeadingDegrees;
  @override
  double get distanceTraveled;
  @override
  double get netElevationChange;
  @override
  double get cumulativeClimbMeters;
  @override
  double get cumulativeDescentMeters;
  @override
  double get metricPeriodSeconds;
  @override
  @JsonKey(ignore: true)
  _$HikeMetricsCopyWith<_HikeMetrics> get copyWith;
}

HikeMetricsData _$HikeMetricsDataFromJson(Map<String, dynamic> json) {
  return _HikeMetricsData.fromJson(json);
}

/// @nodoc
class _$HikeMetricsDataTearOff {
  const _$HikeMetricsDataTearOff();

// ignore: unused_element
  _HikeMetricsData call(
      {Metric timeStartSec,
      Metric latitudeStart,
      Metric longitudeStart,
      Metric altitudeStart,
      Metric latitude,
      Metric longitude,
      Metric altitude,
      Metric speedMetersPerSec,
      Metric headingDegrees,
      Metric locationAccuracy,
      Metric speedAccuracy,
      Metric altitudeMax,
      Metric altitudeMin,
      Metric speedMax,
      Metric speedMin,
      Metric averageSpeedMetersPerSec,
      Metric netHeadingDegrees,
      Metric distanceTraveled,
      Metric netElevationChange,
      Metric cumulativeClimbMeters,
      Metric cumulativeDescentMeters,
      Metric metricPeriodSeconds}) {
    return _HikeMetricsData(
      timeStartSec: timeStartSec,
      latitudeStart: latitudeStart,
      longitudeStart: longitudeStart,
      altitudeStart: altitudeStart,
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
      speedMetersPerSec: speedMetersPerSec,
      headingDegrees: headingDegrees,
      locationAccuracy: locationAccuracy,
      speedAccuracy: speedAccuracy,
      altitudeMax: altitudeMax,
      altitudeMin: altitudeMin,
      speedMax: speedMax,
      speedMin: speedMin,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec,
      netHeadingDegrees: netHeadingDegrees,
      distanceTraveled: distanceTraveled,
      netElevationChange: netElevationChange,
      cumulativeClimbMeters: cumulativeClimbMeters,
      cumulativeDescentMeters: cumulativeDescentMeters,
      metricPeriodSeconds: metricPeriodSeconds,
    );
  }

// ignore: unused_element
  HikeMetricsData fromJson(Map<String, Object> json) {
    return HikeMetricsData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HikeMetricsData = _$HikeMetricsDataTearOff();

/// @nodoc
mixin _$HikeMetricsData {
  Metric get timeStartSec;
  Metric get latitudeStart;
  Metric get longitudeStart;
  Metric get altitudeStart;
  Metric get latitude;
  Metric get longitude;
  Metric get altitude;
  Metric get speedMetersPerSec;
  Metric get headingDegrees;
  Metric get locationAccuracy;
  Metric get speedAccuracy;
  Metric get altitudeMax;
  Metric get altitudeMin;
  Metric get speedMax;
  Metric get speedMin;
  Metric get averageSpeedMetersPerSec;
  Metric get netHeadingDegrees;
  Metric get distanceTraveled;
  Metric get netElevationChange;
  Metric get cumulativeClimbMeters;
  Metric get cumulativeDescentMeters;
  Metric get metricPeriodSeconds;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HikeMetricsDataCopyWith<HikeMetricsData> get copyWith;
}

/// @nodoc
abstract class $HikeMetricsDataCopyWith<$Res> {
  factory $HikeMetricsDataCopyWith(
          HikeMetricsData value, $Res Function(HikeMetricsData) then) =
      _$HikeMetricsDataCopyWithImpl<$Res>;
  $Res call(
      {Metric timeStartSec,
      Metric latitudeStart,
      Metric longitudeStart,
      Metric altitudeStart,
      Metric latitude,
      Metric longitude,
      Metric altitude,
      Metric speedMetersPerSec,
      Metric headingDegrees,
      Metric locationAccuracy,
      Metric speedAccuracy,
      Metric altitudeMax,
      Metric altitudeMin,
      Metric speedMax,
      Metric speedMin,
      Metric averageSpeedMetersPerSec,
      Metric netHeadingDegrees,
      Metric distanceTraveled,
      Metric netElevationChange,
      Metric cumulativeClimbMeters,
      Metric cumulativeDescentMeters,
      Metric metricPeriodSeconds});

  $MetricCopyWith<$Res> get timeStartSec;
  $MetricCopyWith<$Res> get latitudeStart;
  $MetricCopyWith<$Res> get longitudeStart;
  $MetricCopyWith<$Res> get altitudeStart;
  $MetricCopyWith<$Res> get latitude;
  $MetricCopyWith<$Res> get longitude;
  $MetricCopyWith<$Res> get altitude;
  $MetricCopyWith<$Res> get speedMetersPerSec;
  $MetricCopyWith<$Res> get headingDegrees;
  $MetricCopyWith<$Res> get locationAccuracy;
  $MetricCopyWith<$Res> get speedAccuracy;
  $MetricCopyWith<$Res> get altitudeMax;
  $MetricCopyWith<$Res> get altitudeMin;
  $MetricCopyWith<$Res> get speedMax;
  $MetricCopyWith<$Res> get speedMin;
  $MetricCopyWith<$Res> get averageSpeedMetersPerSec;
  $MetricCopyWith<$Res> get netHeadingDegrees;
  $MetricCopyWith<$Res> get distanceTraveled;
  $MetricCopyWith<$Res> get netElevationChange;
  $MetricCopyWith<$Res> get cumulativeClimbMeters;
  $MetricCopyWith<$Res> get cumulativeDescentMeters;
  $MetricCopyWith<$Res> get metricPeriodSeconds;
}

/// @nodoc
class _$HikeMetricsDataCopyWithImpl<$Res>
    implements $HikeMetricsDataCopyWith<$Res> {
  _$HikeMetricsDataCopyWithImpl(this._value, this._then);

  final HikeMetricsData _value;
  // ignore: unused_field
  final $Res Function(HikeMetricsData) _then;

  @override
  $Res call({
    Object timeStartSec = freezed,
    Object latitudeStart = freezed,
    Object longitudeStart = freezed,
    Object altitudeStart = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object headingDegrees = freezed,
    Object locationAccuracy = freezed,
    Object speedAccuracy = freezed,
    Object altitudeMax = freezed,
    Object altitudeMin = freezed,
    Object speedMax = freezed,
    Object speedMin = freezed,
    Object averageSpeedMetersPerSec = freezed,
    Object netHeadingDegrees = freezed,
    Object distanceTraveled = freezed,
    Object netElevationChange = freezed,
    Object cumulativeClimbMeters = freezed,
    Object cumulativeDescentMeters = freezed,
    Object metricPeriodSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      timeStartSec: timeStartSec == freezed
          ? _value.timeStartSec
          : timeStartSec as Metric,
      latitudeStart: latitudeStart == freezed
          ? _value.latitudeStart
          : latitudeStart as Metric,
      longitudeStart: longitudeStart == freezed
          ? _value.longitudeStart
          : longitudeStart as Metric,
      altitudeStart: altitudeStart == freezed
          ? _value.altitudeStart
          : altitudeStart as Metric,
      latitude: latitude == freezed ? _value.latitude : latitude as Metric,
      longitude: longitude == freezed ? _value.longitude : longitude as Metric,
      altitude: altitude == freezed ? _value.altitude : altitude as Metric,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as Metric,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as Metric,
      locationAccuracy: locationAccuracy == freezed
          ? _value.locationAccuracy
          : locationAccuracy as Metric,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as Metric,
      altitudeMax:
          altitudeMax == freezed ? _value.altitudeMax : altitudeMax as Metric,
      altitudeMin:
          altitudeMin == freezed ? _value.altitudeMin : altitudeMin as Metric,
      speedMax: speedMax == freezed ? _value.speedMax : speedMax as Metric,
      speedMin: speedMin == freezed ? _value.speedMin : speedMin as Metric,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec == freezed
          ? _value.averageSpeedMetersPerSec
          : averageSpeedMetersPerSec as Metric,
      netHeadingDegrees: netHeadingDegrees == freezed
          ? _value.netHeadingDegrees
          : netHeadingDegrees as Metric,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled as Metric,
      netElevationChange: netElevationChange == freezed
          ? _value.netElevationChange
          : netElevationChange as Metric,
      cumulativeClimbMeters: cumulativeClimbMeters == freezed
          ? _value.cumulativeClimbMeters
          : cumulativeClimbMeters as Metric,
      cumulativeDescentMeters: cumulativeDescentMeters == freezed
          ? _value.cumulativeDescentMeters
          : cumulativeDescentMeters as Metric,
      metricPeriodSeconds: metricPeriodSeconds == freezed
          ? _value.metricPeriodSeconds
          : metricPeriodSeconds as Metric,
    ));
  }

  @override
  $MetricCopyWith<$Res> get timeStartSec {
    if (_value.timeStartSec == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.timeStartSec, (value) {
      return _then(_value.copyWith(timeStartSec: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get latitudeStart {
    if (_value.latitudeStart == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.latitudeStart, (value) {
      return _then(_value.copyWith(latitudeStart: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get longitudeStart {
    if (_value.longitudeStart == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.longitudeStart, (value) {
      return _then(_value.copyWith(longitudeStart: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get altitudeStart {
    if (_value.altitudeStart == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.altitudeStart, (value) {
      return _then(_value.copyWith(altitudeStart: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get latitude {
    if (_value.latitude == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.latitude, (value) {
      return _then(_value.copyWith(latitude: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get longitude {
    if (_value.longitude == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.longitude, (value) {
      return _then(_value.copyWith(longitude: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get altitude {
    if (_value.altitude == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.altitude, (value) {
      return _then(_value.copyWith(altitude: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get speedMetersPerSec {
    if (_value.speedMetersPerSec == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.speedMetersPerSec, (value) {
      return _then(_value.copyWith(speedMetersPerSec: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get headingDegrees {
    if (_value.headingDegrees == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.headingDegrees, (value) {
      return _then(_value.copyWith(headingDegrees: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get locationAccuracy {
    if (_value.locationAccuracy == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.locationAccuracy, (value) {
      return _then(_value.copyWith(locationAccuracy: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get speedAccuracy {
    if (_value.speedAccuracy == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.speedAccuracy, (value) {
      return _then(_value.copyWith(speedAccuracy: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get altitudeMax {
    if (_value.altitudeMax == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.altitudeMax, (value) {
      return _then(_value.copyWith(altitudeMax: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get altitudeMin {
    if (_value.altitudeMin == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.altitudeMin, (value) {
      return _then(_value.copyWith(altitudeMin: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get speedMax {
    if (_value.speedMax == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.speedMax, (value) {
      return _then(_value.copyWith(speedMax: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get speedMin {
    if (_value.speedMin == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.speedMin, (value) {
      return _then(_value.copyWith(speedMin: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get averageSpeedMetersPerSec {
    if (_value.averageSpeedMetersPerSec == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.averageSpeedMetersPerSec, (value) {
      return _then(_value.copyWith(averageSpeedMetersPerSec: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get netHeadingDegrees {
    if (_value.netHeadingDegrees == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.netHeadingDegrees, (value) {
      return _then(_value.copyWith(netHeadingDegrees: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get distanceTraveled {
    if (_value.distanceTraveled == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.distanceTraveled, (value) {
      return _then(_value.copyWith(distanceTraveled: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get netElevationChange {
    if (_value.netElevationChange == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.netElevationChange, (value) {
      return _then(_value.copyWith(netElevationChange: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get cumulativeClimbMeters {
    if (_value.cumulativeClimbMeters == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.cumulativeClimbMeters, (value) {
      return _then(_value.copyWith(cumulativeClimbMeters: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get cumulativeDescentMeters {
    if (_value.cumulativeDescentMeters == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.cumulativeDescentMeters, (value) {
      return _then(_value.copyWith(cumulativeDescentMeters: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get metricPeriodSeconds {
    if (_value.metricPeriodSeconds == null) {
      return null;
    }
    return $MetricCopyWith<$Res>(_value.metricPeriodSeconds, (value) {
      return _then(_value.copyWith(metricPeriodSeconds: value));
    });
  }
}

/// @nodoc
abstract class _$HikeMetricsDataCopyWith<$Res>
    implements $HikeMetricsDataCopyWith<$Res> {
  factory _$HikeMetricsDataCopyWith(
          _HikeMetricsData value, $Res Function(_HikeMetricsData) then) =
      __$HikeMetricsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Metric timeStartSec,
      Metric latitudeStart,
      Metric longitudeStart,
      Metric altitudeStart,
      Metric latitude,
      Metric longitude,
      Metric altitude,
      Metric speedMetersPerSec,
      Metric headingDegrees,
      Metric locationAccuracy,
      Metric speedAccuracy,
      Metric altitudeMax,
      Metric altitudeMin,
      Metric speedMax,
      Metric speedMin,
      Metric averageSpeedMetersPerSec,
      Metric netHeadingDegrees,
      Metric distanceTraveled,
      Metric netElevationChange,
      Metric cumulativeClimbMeters,
      Metric cumulativeDescentMeters,
      Metric metricPeriodSeconds});

  @override
  $MetricCopyWith<$Res> get timeStartSec;
  @override
  $MetricCopyWith<$Res> get latitudeStart;
  @override
  $MetricCopyWith<$Res> get longitudeStart;
  @override
  $MetricCopyWith<$Res> get altitudeStart;
  @override
  $MetricCopyWith<$Res> get latitude;
  @override
  $MetricCopyWith<$Res> get longitude;
  @override
  $MetricCopyWith<$Res> get altitude;
  @override
  $MetricCopyWith<$Res> get speedMetersPerSec;
  @override
  $MetricCopyWith<$Res> get headingDegrees;
  @override
  $MetricCopyWith<$Res> get locationAccuracy;
  @override
  $MetricCopyWith<$Res> get speedAccuracy;
  @override
  $MetricCopyWith<$Res> get altitudeMax;
  @override
  $MetricCopyWith<$Res> get altitudeMin;
  @override
  $MetricCopyWith<$Res> get speedMax;
  @override
  $MetricCopyWith<$Res> get speedMin;
  @override
  $MetricCopyWith<$Res> get averageSpeedMetersPerSec;
  @override
  $MetricCopyWith<$Res> get netHeadingDegrees;
  @override
  $MetricCopyWith<$Res> get distanceTraveled;
  @override
  $MetricCopyWith<$Res> get netElevationChange;
  @override
  $MetricCopyWith<$Res> get cumulativeClimbMeters;
  @override
  $MetricCopyWith<$Res> get cumulativeDescentMeters;
  @override
  $MetricCopyWith<$Res> get metricPeriodSeconds;
}

/// @nodoc
class __$HikeMetricsDataCopyWithImpl<$Res>
    extends _$HikeMetricsDataCopyWithImpl<$Res>
    implements _$HikeMetricsDataCopyWith<$Res> {
  __$HikeMetricsDataCopyWithImpl(
      _HikeMetricsData _value, $Res Function(_HikeMetricsData) _then)
      : super(_value, (v) => _then(v as _HikeMetricsData));

  @override
  _HikeMetricsData get _value => super._value as _HikeMetricsData;

  @override
  $Res call({
    Object timeStartSec = freezed,
    Object latitudeStart = freezed,
    Object longitudeStart = freezed,
    Object altitudeStart = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object headingDegrees = freezed,
    Object locationAccuracy = freezed,
    Object speedAccuracy = freezed,
    Object altitudeMax = freezed,
    Object altitudeMin = freezed,
    Object speedMax = freezed,
    Object speedMin = freezed,
    Object averageSpeedMetersPerSec = freezed,
    Object netHeadingDegrees = freezed,
    Object distanceTraveled = freezed,
    Object netElevationChange = freezed,
    Object cumulativeClimbMeters = freezed,
    Object cumulativeDescentMeters = freezed,
    Object metricPeriodSeconds = freezed,
  }) {
    return _then(_HikeMetricsData(
      timeStartSec: timeStartSec == freezed
          ? _value.timeStartSec
          : timeStartSec as Metric,
      latitudeStart: latitudeStart == freezed
          ? _value.latitudeStart
          : latitudeStart as Metric,
      longitudeStart: longitudeStart == freezed
          ? _value.longitudeStart
          : longitudeStart as Metric,
      altitudeStart: altitudeStart == freezed
          ? _value.altitudeStart
          : altitudeStart as Metric,
      latitude: latitude == freezed ? _value.latitude : latitude as Metric,
      longitude: longitude == freezed ? _value.longitude : longitude as Metric,
      altitude: altitude == freezed ? _value.altitude : altitude as Metric,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as Metric,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as Metric,
      locationAccuracy: locationAccuracy == freezed
          ? _value.locationAccuracy
          : locationAccuracy as Metric,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as Metric,
      altitudeMax:
          altitudeMax == freezed ? _value.altitudeMax : altitudeMax as Metric,
      altitudeMin:
          altitudeMin == freezed ? _value.altitudeMin : altitudeMin as Metric,
      speedMax: speedMax == freezed ? _value.speedMax : speedMax as Metric,
      speedMin: speedMin == freezed ? _value.speedMin : speedMin as Metric,
      averageSpeedMetersPerSec: averageSpeedMetersPerSec == freezed
          ? _value.averageSpeedMetersPerSec
          : averageSpeedMetersPerSec as Metric,
      netHeadingDegrees: netHeadingDegrees == freezed
          ? _value.netHeadingDegrees
          : netHeadingDegrees as Metric,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled as Metric,
      netElevationChange: netElevationChange == freezed
          ? _value.netElevationChange
          : netElevationChange as Metric,
      cumulativeClimbMeters: cumulativeClimbMeters == freezed
          ? _value.cumulativeClimbMeters
          : cumulativeClimbMeters as Metric,
      cumulativeDescentMeters: cumulativeDescentMeters == freezed
          ? _value.cumulativeDescentMeters
          : cumulativeDescentMeters as Metric,
      metricPeriodSeconds: metricPeriodSeconds == freezed
          ? _value.metricPeriodSeconds
          : metricPeriodSeconds as Metric,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HikeMetricsData implements _HikeMetricsData {
  const _$_HikeMetricsData(
      {this.timeStartSec,
      this.latitudeStart,
      this.longitudeStart,
      this.altitudeStart,
      this.latitude,
      this.longitude,
      this.altitude,
      this.speedMetersPerSec,
      this.headingDegrees,
      this.locationAccuracy,
      this.speedAccuracy,
      this.altitudeMax,
      this.altitudeMin,
      this.speedMax,
      this.speedMin,
      this.averageSpeedMetersPerSec,
      this.netHeadingDegrees,
      this.distanceTraveled,
      this.netElevationChange,
      this.cumulativeClimbMeters,
      this.cumulativeDescentMeters,
      this.metricPeriodSeconds});

  factory _$_HikeMetricsData.fromJson(Map<String, dynamic> json) =>
      _$_$_HikeMetricsDataFromJson(json);

  @override
  final Metric timeStartSec;
  @override
  final Metric latitudeStart;
  @override
  final Metric longitudeStart;
  @override
  final Metric altitudeStart;
  @override
  final Metric latitude;
  @override
  final Metric longitude;
  @override
  final Metric altitude;
  @override
  final Metric speedMetersPerSec;
  @override
  final Metric headingDegrees;
  @override
  final Metric locationAccuracy;
  @override
  final Metric speedAccuracy;
  @override
  final Metric altitudeMax;
  @override
  final Metric altitudeMin;
  @override
  final Metric speedMax;
  @override
  final Metric speedMin;
  @override
  final Metric averageSpeedMetersPerSec;
  @override
  final Metric netHeadingDegrees;
  @override
  final Metric distanceTraveled;
  @override
  final Metric netElevationChange;
  @override
  final Metric cumulativeClimbMeters;
  @override
  final Metric cumulativeDescentMeters;
  @override
  final Metric metricPeriodSeconds;

  @override
  String toString() {
    return 'HikeMetricsData(timeStartSec: $timeStartSec, latitudeStart: $latitudeStart, longitudeStart: $longitudeStart, altitudeStart: $altitudeStart, latitude: $latitude, longitude: $longitude, altitude: $altitude, speedMetersPerSec: $speedMetersPerSec, headingDegrees: $headingDegrees, locationAccuracy: $locationAccuracy, speedAccuracy: $speedAccuracy, altitudeMax: $altitudeMax, altitudeMin: $altitudeMin, speedMax: $speedMax, speedMin: $speedMin, averageSpeedMetersPerSec: $averageSpeedMetersPerSec, netHeadingDegrees: $netHeadingDegrees, distanceTraveled: $distanceTraveled, netElevationChange: $netElevationChange, cumulativeClimbMeters: $cumulativeClimbMeters, cumulativeDescentMeters: $cumulativeDescentMeters, metricPeriodSeconds: $metricPeriodSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HikeMetricsData &&
            (identical(other.timeStartSec, timeStartSec) ||
                const DeepCollectionEquality()
                    .equals(other.timeStartSec, timeStartSec)) &&
            (identical(other.latitudeStart, latitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.latitudeStart, latitudeStart)) &&
            (identical(other.longitudeStart, longitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.longitudeStart, longitudeStart)) &&
            (identical(other.altitudeStart, altitudeStart) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeStart, altitudeStart)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.speedMetersPerSec, speedMetersPerSec) ||
                const DeepCollectionEquality()
                    .equals(other.speedMetersPerSec, speedMetersPerSec)) &&
            (identical(other.headingDegrees, headingDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.headingDegrees, headingDegrees)) &&
            (identical(other.locationAccuracy, locationAccuracy) ||
                const DeepCollectionEquality()
                    .equals(other.locationAccuracy, locationAccuracy)) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                const DeepCollectionEquality()
                    .equals(other.speedAccuracy, speedAccuracy)) &&
            (identical(other.altitudeMax, altitudeMax) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeMax, altitudeMax)) &&
            (identical(other.altitudeMin, altitudeMin) ||
                const DeepCollectionEquality()
                    .equals(other.altitudeMin, altitudeMin)) &&
            (identical(other.speedMax, speedMax) ||
                const DeepCollectionEquality()
                    .equals(other.speedMax, speedMax)) &&
            (identical(other.speedMin, speedMin) ||
                const DeepCollectionEquality()
                    .equals(other.speedMin, speedMin)) &&
            (identical(other.averageSpeedMetersPerSec, averageSpeedMetersPerSec) ||
                const DeepCollectionEquality().equals(
                    other.averageSpeedMetersPerSec,
                    averageSpeedMetersPerSec)) &&
            (identical(other.netHeadingDegrees, netHeadingDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.netHeadingDegrees, netHeadingDegrees)) &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                const DeepCollectionEquality()
                    .equals(other.distanceTraveled, distanceTraveled)) &&
            (identical(other.netElevationChange, netElevationChange) ||
                const DeepCollectionEquality()
                    .equals(other.netElevationChange, netElevationChange)) &&
            (identical(other.cumulativeClimbMeters, cumulativeClimbMeters) ||
                const DeepCollectionEquality().equals(
                    other.cumulativeClimbMeters, cumulativeClimbMeters)) &&
            (identical(other.cumulativeDescentMeters, cumulativeDescentMeters) || const DeepCollectionEquality().equals(other.cumulativeDescentMeters, cumulativeDescentMeters)) &&
            (identical(other.metricPeriodSeconds, metricPeriodSeconds) || const DeepCollectionEquality().equals(other.metricPeriodSeconds, metricPeriodSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timeStartSec) ^
      const DeepCollectionEquality().hash(latitudeStart) ^
      const DeepCollectionEquality().hash(longitudeStart) ^
      const DeepCollectionEquality().hash(altitudeStart) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(altitude) ^
      const DeepCollectionEquality().hash(speedMetersPerSec) ^
      const DeepCollectionEquality().hash(headingDegrees) ^
      const DeepCollectionEquality().hash(locationAccuracy) ^
      const DeepCollectionEquality().hash(speedAccuracy) ^
      const DeepCollectionEquality().hash(altitudeMax) ^
      const DeepCollectionEquality().hash(altitudeMin) ^
      const DeepCollectionEquality().hash(speedMax) ^
      const DeepCollectionEquality().hash(speedMin) ^
      const DeepCollectionEquality().hash(averageSpeedMetersPerSec) ^
      const DeepCollectionEquality().hash(netHeadingDegrees) ^
      const DeepCollectionEquality().hash(distanceTraveled) ^
      const DeepCollectionEquality().hash(netElevationChange) ^
      const DeepCollectionEquality().hash(cumulativeClimbMeters) ^
      const DeepCollectionEquality().hash(cumulativeDescentMeters) ^
      const DeepCollectionEquality().hash(metricPeriodSeconds);

  @JsonKey(ignore: true)
  @override
  _$HikeMetricsDataCopyWith<_HikeMetricsData> get copyWith =>
      __$HikeMetricsDataCopyWithImpl<_HikeMetricsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HikeMetricsDataToJson(this);
  }
}

abstract class _HikeMetricsData implements HikeMetricsData {
  const factory _HikeMetricsData(
      {Metric timeStartSec,
      Metric latitudeStart,
      Metric longitudeStart,
      Metric altitudeStart,
      Metric latitude,
      Metric longitude,
      Metric altitude,
      Metric speedMetersPerSec,
      Metric headingDegrees,
      Metric locationAccuracy,
      Metric speedAccuracy,
      Metric altitudeMax,
      Metric altitudeMin,
      Metric speedMax,
      Metric speedMin,
      Metric averageSpeedMetersPerSec,
      Metric netHeadingDegrees,
      Metric distanceTraveled,
      Metric netElevationChange,
      Metric cumulativeClimbMeters,
      Metric cumulativeDescentMeters,
      Metric metricPeriodSeconds}) = _$_HikeMetricsData;

  factory _HikeMetricsData.fromJson(Map<String, dynamic> json) =
      _$_HikeMetricsData.fromJson;

  @override
  Metric get timeStartSec;
  @override
  Metric get latitudeStart;
  @override
  Metric get longitudeStart;
  @override
  Metric get altitudeStart;
  @override
  Metric get latitude;
  @override
  Metric get longitude;
  @override
  Metric get altitude;
  @override
  Metric get speedMetersPerSec;
  @override
  Metric get headingDegrees;
  @override
  Metric get locationAccuracy;
  @override
  Metric get speedAccuracy;
  @override
  Metric get altitudeMax;
  @override
  Metric get altitudeMin;
  @override
  Metric get speedMax;
  @override
  Metric get speedMin;
  @override
  Metric get averageSpeedMetersPerSec;
  @override
  Metric get netHeadingDegrees;
  @override
  Metric get distanceTraveled;
  @override
  Metric get netElevationChange;
  @override
  Metric get cumulativeClimbMeters;
  @override
  Metric get cumulativeDescentMeters;
  @override
  Metric get metricPeriodSeconds;
  @override
  @JsonKey(ignore: true)
  _$HikeMetricsDataCopyWith<_HikeMetricsData> get copyWith;
}

Metric _$MetricFromJson(Map<String, dynamic> json) {
  return _Metric.fromJson(json);
}

/// @nodoc
class _$MetricTearOff {
  const _$MetricTearOff();

// ignore: unused_element
  _Metric call({String name = "", String value = "", bool visible = true}) {
    return _Metric(
      name: name,
      value: value,
      visible: visible,
    );
  }

// ignore: unused_element
  Metric fromJson(Map<String, Object> json) {
    return Metric.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Metric = _$MetricTearOff();

/// @nodoc
mixin _$Metric {
  String get name;
  String get value;
  bool get visible;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MetricCopyWith<Metric> get copyWith;
}

/// @nodoc
abstract class $MetricCopyWith<$Res> {
  factory $MetricCopyWith(Metric value, $Res Function(Metric) then) =
      _$MetricCopyWithImpl<$Res>;
  $Res call({String name, String value, bool visible});
}

/// @nodoc
class _$MetricCopyWithImpl<$Res> implements $MetricCopyWith<$Res> {
  _$MetricCopyWithImpl(this._value, this._then);

  final Metric _value;
  // ignore: unused_field
  final $Res Function(Metric) _then;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
    Object visible = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

/// @nodoc
abstract class _$MetricCopyWith<$Res> implements $MetricCopyWith<$Res> {
  factory _$MetricCopyWith(_Metric value, $Res Function(_Metric) then) =
      __$MetricCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value, bool visible});
}

/// @nodoc
class __$MetricCopyWithImpl<$Res> extends _$MetricCopyWithImpl<$Res>
    implements _$MetricCopyWith<$Res> {
  __$MetricCopyWithImpl(_Metric _value, $Res Function(_Metric) _then)
      : super(_value, (v) => _then(v as _Metric));

  @override
  _Metric get _value => super._value as _Metric;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
    Object visible = freezed,
  }) {
    return _then(_Metric(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Metric implements _Metric {
  const _$_Metric({this.name = "", this.value = "", this.visible = true})
      : assert(name != null),
        assert(value != null),
        assert(visible != null);

  factory _$_Metric.fromJson(Map<String, dynamic> json) =>
      _$_$_MetricFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String name;
  @JsonKey(defaultValue: "")
  @override
  final String value;
  @JsonKey(defaultValue: true)
  @override
  final bool visible;

  @override
  String toString() {
    return 'Metric(name: $name, value: $value, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Metric &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality().equals(other.visible, visible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(visible);

  @JsonKey(ignore: true)
  @override
  _$MetricCopyWith<_Metric> get copyWith =>
      __$MetricCopyWithImpl<_Metric>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MetricToJson(this);
  }
}

abstract class _Metric implements Metric {
  const factory _Metric({String name, String value, bool visible}) = _$_Metric;

  factory _Metric.fromJson(Map<String, dynamic> json) = _$_Metric.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$MetricCopyWith<_Metric> get copyWith;
}
