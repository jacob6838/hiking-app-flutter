// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationStatus _$LocationStatusFromJson(Map<String, dynamic> json) {
  return _LocationStatus.fromJson(json);
}

/// @nodoc
class _$LocationStatusTearOff {
  const _$LocationStatusTearOff();

// ignore: unused_element
  _LocationStatus call(
      {double latitude = 0.0,
      double longitude = 0.0,
      double accuracyValue = 0.0,
      LocationAccuracyType accuracy = LocationAccuracyType.low,
      double altitude = 0.0,
      double speedMetersPerSec = 0.0,
      double speedAccuracyValue = 0.0,
      LocationAccuracyType speedAccuracy = LocationAccuracyType.low,
      double headingDegrees = 0.0,
      double timeStampSec = 0.0}) {
    return _LocationStatus(
      latitude: latitude,
      longitude: longitude,
      accuracyValue: accuracyValue,
      accuracy: accuracy,
      altitude: altitude,
      speedMetersPerSec: speedMetersPerSec,
      speedAccuracyValue: speedAccuracyValue,
      speedAccuracy: speedAccuracy,
      headingDegrees: headingDegrees,
      timeStampSec: timeStampSec,
    );
  }

// ignore: unused_element
  LocationStatus fromJson(Map<String, Object> json) {
    return LocationStatus.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocationStatus = _$LocationStatusTearOff();

/// @nodoc
mixin _$LocationStatus {
  double get latitude;
  double get longitude;
  double get accuracyValue;
  LocationAccuracyType get accuracy;
  double get altitude;
  double get speedMetersPerSec;
  double get speedAccuracyValue;
  LocationAccuracyType get speedAccuracy;
  double get headingDegrees;
  double get timeStampSec;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocationStatusCopyWith<LocationStatus> get copyWith;
}

/// @nodoc
abstract class $LocationStatusCopyWith<$Res> {
  factory $LocationStatusCopyWith(
          LocationStatus value, $Res Function(LocationStatus) then) =
      _$LocationStatusCopyWithImpl<$Res>;
  $Res call(
      {double latitude,
      double longitude,
      double accuracyValue,
      LocationAccuracyType accuracy,
      double altitude,
      double speedMetersPerSec,
      double speedAccuracyValue,
      LocationAccuracyType speedAccuracy,
      double headingDegrees,
      double timeStampSec});
}

/// @nodoc
class _$LocationStatusCopyWithImpl<$Res>
    implements $LocationStatusCopyWith<$Res> {
  _$LocationStatusCopyWithImpl(this._value, this._then);

  final LocationStatus _value;
  // ignore: unused_field
  final $Res Function(LocationStatus) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object accuracyValue = freezed,
    Object accuracy = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object speedAccuracyValue = freezed,
    Object speedAccuracy = freezed,
    Object headingDegrees = freezed,
    Object timeStampSec = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      accuracyValue: accuracyValue == freezed
          ? _value.accuracyValue
          : accuracyValue as double,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy as LocationAccuracyType,
      altitude: altitude == freezed ? _value.altitude : altitude as double,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as double,
      speedAccuracyValue: speedAccuracyValue == freezed
          ? _value.speedAccuracyValue
          : speedAccuracyValue as double,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as LocationAccuracyType,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as double,
      timeStampSec: timeStampSec == freezed
          ? _value.timeStampSec
          : timeStampSec as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationStatusCopyWith<$Res>
    implements $LocationStatusCopyWith<$Res> {
  factory _$LocationStatusCopyWith(
          _LocationStatus value, $Res Function(_LocationStatus) then) =
      __$LocationStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {double latitude,
      double longitude,
      double accuracyValue,
      LocationAccuracyType accuracy,
      double altitude,
      double speedMetersPerSec,
      double speedAccuracyValue,
      LocationAccuracyType speedAccuracy,
      double headingDegrees,
      double timeStampSec});
}

/// @nodoc
class __$LocationStatusCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements _$LocationStatusCopyWith<$Res> {
  __$LocationStatusCopyWithImpl(
      _LocationStatus _value, $Res Function(_LocationStatus) _then)
      : super(_value, (v) => _then(v as _LocationStatus));

  @override
  _LocationStatus get _value => super._value as _LocationStatus;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object accuracyValue = freezed,
    Object accuracy = freezed,
    Object altitude = freezed,
    Object speedMetersPerSec = freezed,
    Object speedAccuracyValue = freezed,
    Object speedAccuracy = freezed,
    Object headingDegrees = freezed,
    Object timeStampSec = freezed,
  }) {
    return _then(_LocationStatus(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      accuracyValue: accuracyValue == freezed
          ? _value.accuracyValue
          : accuracyValue as double,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy as LocationAccuracyType,
      altitude: altitude == freezed ? _value.altitude : altitude as double,
      speedMetersPerSec: speedMetersPerSec == freezed
          ? _value.speedMetersPerSec
          : speedMetersPerSec as double,
      speedAccuracyValue: speedAccuracyValue == freezed
          ? _value.speedAccuracyValue
          : speedAccuracyValue as double,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy as LocationAccuracyType,
      headingDegrees: headingDegrees == freezed
          ? _value.headingDegrees
          : headingDegrees as double,
      timeStampSec: timeStampSec == freezed
          ? _value.timeStampSec
          : timeStampSec as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocationStatus implements _LocationStatus {
  const _$_LocationStatus(
      {this.latitude = 0.0,
      this.longitude = 0.0,
      this.accuracyValue = 0.0,
      this.accuracy = LocationAccuracyType.low,
      this.altitude = 0.0,
      this.speedMetersPerSec = 0.0,
      this.speedAccuracyValue = 0.0,
      this.speedAccuracy = LocationAccuracyType.low,
      this.headingDegrees = 0.0,
      this.timeStampSec = 0.0})
      : assert(latitude != null),
        assert(longitude != null),
        assert(accuracyValue != null),
        assert(accuracy != null),
        assert(altitude != null),
        assert(speedMetersPerSec != null),
        assert(speedAccuracyValue != null),
        assert(speedAccuracy != null),
        assert(headingDegrees != null),
        assert(timeStampSec != null);

  factory _$_LocationStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationStatusFromJson(json);

  @JsonKey(defaultValue: 0.0)
  @override
  final double latitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double longitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double accuracyValue;
  @JsonKey(defaultValue: LocationAccuracyType.low)
  @override
  final LocationAccuracyType accuracy;
  @JsonKey(defaultValue: 0.0)
  @override
  final double altitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double speedMetersPerSec;
  @JsonKey(defaultValue: 0.0)
  @override
  final double speedAccuracyValue;
  @JsonKey(defaultValue: LocationAccuracyType.low)
  @override
  final LocationAccuracyType speedAccuracy;
  @JsonKey(defaultValue: 0.0)
  @override
  final double headingDegrees;
  @JsonKey(defaultValue: 0.0)
  @override
  final double timeStampSec;

  @override
  String toString() {
    return 'LocationStatus(latitude: $latitude, longitude: $longitude, accuracyValue: $accuracyValue, accuracy: $accuracy, altitude: $altitude, speedMetersPerSec: $speedMetersPerSec, speedAccuracyValue: $speedAccuracyValue, speedAccuracy: $speedAccuracy, headingDegrees: $headingDegrees, timeStampSec: $timeStampSec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationStatus &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.accuracyValue, accuracyValue) ||
                const DeepCollectionEquality()
                    .equals(other.accuracyValue, accuracyValue)) &&
            (identical(other.accuracy, accuracy) ||
                const DeepCollectionEquality()
                    .equals(other.accuracy, accuracy)) &&
            (identical(other.altitude, altitude) ||
                const DeepCollectionEquality()
                    .equals(other.altitude, altitude)) &&
            (identical(other.speedMetersPerSec, speedMetersPerSec) ||
                const DeepCollectionEquality()
                    .equals(other.speedMetersPerSec, speedMetersPerSec)) &&
            (identical(other.speedAccuracyValue, speedAccuracyValue) ||
                const DeepCollectionEquality()
                    .equals(other.speedAccuracyValue, speedAccuracyValue)) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                const DeepCollectionEquality()
                    .equals(other.speedAccuracy, speedAccuracy)) &&
            (identical(other.headingDegrees, headingDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.headingDegrees, headingDegrees)) &&
            (identical(other.timeStampSec, timeStampSec) ||
                const DeepCollectionEquality()
                    .equals(other.timeStampSec, timeStampSec)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(accuracyValue) ^
      const DeepCollectionEquality().hash(accuracy) ^
      const DeepCollectionEquality().hash(altitude) ^
      const DeepCollectionEquality().hash(speedMetersPerSec) ^
      const DeepCollectionEquality().hash(speedAccuracyValue) ^
      const DeepCollectionEquality().hash(speedAccuracy) ^
      const DeepCollectionEquality().hash(headingDegrees) ^
      const DeepCollectionEquality().hash(timeStampSec);

  @JsonKey(ignore: true)
  @override
  _$LocationStatusCopyWith<_LocationStatus> get copyWith =>
      __$LocationStatusCopyWithImpl<_LocationStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationStatusToJson(this);
  }
}

abstract class _LocationStatus implements LocationStatus {
  const factory _LocationStatus(
      {double latitude,
      double longitude,
      double accuracyValue,
      LocationAccuracyType accuracy,
      double altitude,
      double speedMetersPerSec,
      double speedAccuracyValue,
      LocationAccuracyType speedAccuracy,
      double headingDegrees,
      double timeStampSec}) = _$_LocationStatus;

  factory _LocationStatus.fromJson(Map<String, dynamic> json) =
      _$_LocationStatus.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get accuracyValue;
  @override
  LocationAccuracyType get accuracy;
  @override
  double get altitude;
  @override
  double get speedMetersPerSec;
  @override
  double get speedAccuracyValue;
  @override
  LocationAccuracyType get speedAccuracy;
  @override
  double get headingDegrees;
  @override
  double get timeStampSec;
  @override
  @JsonKey(ignore: true)
  _$LocationStatusCopyWith<_LocationStatus> get copyWith;
}
