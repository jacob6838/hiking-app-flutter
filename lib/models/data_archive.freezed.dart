// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data_archive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DataArchive _$DataArchiveFromJson(Map<String, dynamic> json) {
  return _DataArchive.fromJson(json);
}

/// @nodoc
class _$DataArchiveTearOff {
  const _$DataArchiveTearOff();

// ignore: unused_element
  _DataArchive call(
      {@nullable HikeMetrics hikeMetrics,
      @nullable List<LocationStatus> locationHistory,
      @nullable PlotValues elevationPlot,
      @nullable PlotValues speedPlot}) {
    return _DataArchive(
      hikeMetrics: hikeMetrics,
      locationHistory: locationHistory,
      elevationPlot: elevationPlot,
      speedPlot: speedPlot,
    );
  }

// ignore: unused_element
  DataArchive fromJson(Map<String, Object> json) {
    return DataArchive.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DataArchive = _$DataArchiveTearOff();

/// @nodoc
mixin _$DataArchive {
  @nullable
  HikeMetrics get hikeMetrics;
  @nullable
  List<LocationStatus> get locationHistory;
  @nullable
  PlotValues get elevationPlot;
  @nullable
  PlotValues get speedPlot;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DataArchiveCopyWith<DataArchive> get copyWith;
}

/// @nodoc
abstract class $DataArchiveCopyWith<$Res> {
  factory $DataArchiveCopyWith(
          DataArchive value, $Res Function(DataArchive) then) =
      _$DataArchiveCopyWithImpl<$Res>;
  $Res call(
      {@nullable HikeMetrics hikeMetrics,
      @nullable List<LocationStatus> locationHistory,
      @nullable PlotValues elevationPlot,
      @nullable PlotValues speedPlot});

  $HikeMetricsCopyWith<$Res> get hikeMetrics;
  $PlotValuesCopyWith<$Res> get elevationPlot;
  $PlotValuesCopyWith<$Res> get speedPlot;
}

/// @nodoc
class _$DataArchiveCopyWithImpl<$Res> implements $DataArchiveCopyWith<$Res> {
  _$DataArchiveCopyWithImpl(this._value, this._then);

  final DataArchive _value;
  // ignore: unused_field
  final $Res Function(DataArchive) _then;

  @override
  $Res call({
    Object hikeMetrics = freezed,
    Object locationHistory = freezed,
    Object elevationPlot = freezed,
    Object speedPlot = freezed,
  }) {
    return _then(_value.copyWith(
      hikeMetrics: hikeMetrics == freezed
          ? _value.hikeMetrics
          : hikeMetrics as HikeMetrics,
      locationHistory: locationHistory == freezed
          ? _value.locationHistory
          : locationHistory as List<LocationStatus>,
      elevationPlot: elevationPlot == freezed
          ? _value.elevationPlot
          : elevationPlot as PlotValues,
      speedPlot:
          speedPlot == freezed ? _value.speedPlot : speedPlot as PlotValues,
    ));
  }

  @override
  $HikeMetricsCopyWith<$Res> get hikeMetrics {
    if (_value.hikeMetrics == null) {
      return null;
    }
    return $HikeMetricsCopyWith<$Res>(_value.hikeMetrics, (value) {
      return _then(_value.copyWith(hikeMetrics: value));
    });
  }

  @override
  $PlotValuesCopyWith<$Res> get elevationPlot {
    if (_value.elevationPlot == null) {
      return null;
    }
    return $PlotValuesCopyWith<$Res>(_value.elevationPlot, (value) {
      return _then(_value.copyWith(elevationPlot: value));
    });
  }

  @override
  $PlotValuesCopyWith<$Res> get speedPlot {
    if (_value.speedPlot == null) {
      return null;
    }
    return $PlotValuesCopyWith<$Res>(_value.speedPlot, (value) {
      return _then(_value.copyWith(speedPlot: value));
    });
  }
}

/// @nodoc
abstract class _$DataArchiveCopyWith<$Res>
    implements $DataArchiveCopyWith<$Res> {
  factory _$DataArchiveCopyWith(
          _DataArchive value, $Res Function(_DataArchive) then) =
      __$DataArchiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable HikeMetrics hikeMetrics,
      @nullable List<LocationStatus> locationHistory,
      @nullable PlotValues elevationPlot,
      @nullable PlotValues speedPlot});

  @override
  $HikeMetricsCopyWith<$Res> get hikeMetrics;
  @override
  $PlotValuesCopyWith<$Res> get elevationPlot;
  @override
  $PlotValuesCopyWith<$Res> get speedPlot;
}

/// @nodoc
class __$DataArchiveCopyWithImpl<$Res> extends _$DataArchiveCopyWithImpl<$Res>
    implements _$DataArchiveCopyWith<$Res> {
  __$DataArchiveCopyWithImpl(
      _DataArchive _value, $Res Function(_DataArchive) _then)
      : super(_value, (v) => _then(v as _DataArchive));

  @override
  _DataArchive get _value => super._value as _DataArchive;

  @override
  $Res call({
    Object hikeMetrics = freezed,
    Object locationHistory = freezed,
    Object elevationPlot = freezed,
    Object speedPlot = freezed,
  }) {
    return _then(_DataArchive(
      hikeMetrics: hikeMetrics == freezed
          ? _value.hikeMetrics
          : hikeMetrics as HikeMetrics,
      locationHistory: locationHistory == freezed
          ? _value.locationHistory
          : locationHistory as List<LocationStatus>,
      elevationPlot: elevationPlot == freezed
          ? _value.elevationPlot
          : elevationPlot as PlotValues,
      speedPlot:
          speedPlot == freezed ? _value.speedPlot : speedPlot as PlotValues,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DataArchive implements _DataArchive {
  const _$_DataArchive(
      {@nullable this.hikeMetrics,
      @nullable this.locationHistory,
      @nullable this.elevationPlot,
      @nullable this.speedPlot});

  factory _$_DataArchive.fromJson(Map<String, dynamic> json) =>
      _$_$_DataArchiveFromJson(json);

  @override
  @nullable
  final HikeMetrics hikeMetrics;
  @override
  @nullable
  final List<LocationStatus> locationHistory;
  @override
  @nullable
  final PlotValues elevationPlot;
  @override
  @nullable
  final PlotValues speedPlot;

  @override
  String toString() {
    return 'DataArchive(hikeMetrics: $hikeMetrics, locationHistory: $locationHistory, elevationPlot: $elevationPlot, speedPlot: $speedPlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataArchive &&
            (identical(other.hikeMetrics, hikeMetrics) ||
                const DeepCollectionEquality()
                    .equals(other.hikeMetrics, hikeMetrics)) &&
            (identical(other.locationHistory, locationHistory) ||
                const DeepCollectionEquality()
                    .equals(other.locationHistory, locationHistory)) &&
            (identical(other.elevationPlot, elevationPlot) ||
                const DeepCollectionEquality()
                    .equals(other.elevationPlot, elevationPlot)) &&
            (identical(other.speedPlot, speedPlot) ||
                const DeepCollectionEquality()
                    .equals(other.speedPlot, speedPlot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hikeMetrics) ^
      const DeepCollectionEquality().hash(locationHistory) ^
      const DeepCollectionEquality().hash(elevationPlot) ^
      const DeepCollectionEquality().hash(speedPlot);

  @JsonKey(ignore: true)
  @override
  _$DataArchiveCopyWith<_DataArchive> get copyWith =>
      __$DataArchiveCopyWithImpl<_DataArchive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataArchiveToJson(this);
  }
}

abstract class _DataArchive implements DataArchive {
  const factory _DataArchive(
      {@nullable HikeMetrics hikeMetrics,
      @nullable List<LocationStatus> locationHistory,
      @nullable PlotValues elevationPlot,
      @nullable PlotValues speedPlot}) = _$_DataArchive;

  factory _DataArchive.fromJson(Map<String, dynamic> json) =
      _$_DataArchive.fromJson;

  @override
  @nullable
  HikeMetrics get hikeMetrics;
  @override
  @nullable
  List<LocationStatus> get locationHistory;
  @override
  @nullable
  PlotValues get elevationPlot;
  @override
  @nullable
  PlotValues get speedPlot;
  @override
  @JsonKey(ignore: true)
  _$DataArchiveCopyWith<_DataArchive> get copyWith;
}
