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
      {@nullable HikeMetrics hikeMetrics, @nullable PlotValues elevationPlot}) {
    return _DataArchive(
      hikeMetrics: hikeMetrics,
      elevationPlot: elevationPlot,
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
  PlotValues get elevationPlot;

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
      {@nullable HikeMetrics hikeMetrics, @nullable PlotValues elevationPlot});

  $HikeMetricsCopyWith<$Res> get hikeMetrics;
  $PlotValuesCopyWith<$Res> get elevationPlot;
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
    Object elevationPlot = freezed,
  }) {
    return _then(_value.copyWith(
      hikeMetrics: hikeMetrics == freezed
          ? _value.hikeMetrics
          : hikeMetrics as HikeMetrics,
      elevationPlot: elevationPlot == freezed
          ? _value.elevationPlot
          : elevationPlot as PlotValues,
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
}

/// @nodoc
abstract class _$DataArchiveCopyWith<$Res>
    implements $DataArchiveCopyWith<$Res> {
  factory _$DataArchiveCopyWith(
          _DataArchive value, $Res Function(_DataArchive) then) =
      __$DataArchiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable HikeMetrics hikeMetrics, @nullable PlotValues elevationPlot});

  @override
  $HikeMetricsCopyWith<$Res> get hikeMetrics;
  @override
  $PlotValuesCopyWith<$Res> get elevationPlot;
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
    Object elevationPlot = freezed,
  }) {
    return _then(_DataArchive(
      hikeMetrics: hikeMetrics == freezed
          ? _value.hikeMetrics
          : hikeMetrics as HikeMetrics,
      elevationPlot: elevationPlot == freezed
          ? _value.elevationPlot
          : elevationPlot as PlotValues,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DataArchive implements _DataArchive {
  const _$_DataArchive(
      {@nullable this.hikeMetrics, @nullable this.elevationPlot});

  factory _$_DataArchive.fromJson(Map<String, dynamic> json) =>
      _$_$_DataArchiveFromJson(json);

  @override
  @nullable
  final HikeMetrics hikeMetrics;
  @override
  @nullable
  final PlotValues elevationPlot;

  @override
  String toString() {
    return 'DataArchive(hikeMetrics: $hikeMetrics, elevationPlot: $elevationPlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataArchive &&
            (identical(other.hikeMetrics, hikeMetrics) ||
                const DeepCollectionEquality()
                    .equals(other.hikeMetrics, hikeMetrics)) &&
            (identical(other.elevationPlot, elevationPlot) ||
                const DeepCollectionEquality()
                    .equals(other.elevationPlot, elevationPlot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hikeMetrics) ^
      const DeepCollectionEquality().hash(elevationPlot);

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
      @nullable PlotValues elevationPlot}) = _$_DataArchive;

  factory _DataArchive.fromJson(Map<String, dynamic> json) =
      _$_DataArchive.fromJson;

  @override
  @nullable
  HikeMetrics get hikeMetrics;
  @override
  @nullable
  PlotValues get elevationPlot;
  @override
  @JsonKey(ignore: true)
  _$DataArchiveCopyWith<_DataArchive> get copyWith;
}
