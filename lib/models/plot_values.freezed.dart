// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'plot_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlotValues _$PlotValuesFromJson(Map<String, dynamic> json) {
  return _PlotValues.fromJson(json);
}

/// @nodoc
class _$PlotValuesTearOff {
  const _$PlotValuesTearOff();

// ignore: unused_element
  _PlotValues _(
      {List<List<double>> values,
      PlotFormat xFormat,
      PlotFormat yFormat,
      double height,
      double width}) {
    return _PlotValues(
      values: values,
      xFormat: xFormat,
      yFormat: yFormat,
      height: height,
      width: width,
    );
  }

// ignore: unused_element
  PlotValues fromJson(Map<String, Object> json) {
    return PlotValues.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlotValues = _$PlotValuesTearOff();

/// @nodoc
mixin _$PlotValues {
  List<List<double>> get values;
  PlotFormat get xFormat;
  PlotFormat get yFormat;
  double get height;
  double get width;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PlotValuesCopyWith<PlotValues> get copyWith;
}

/// @nodoc
abstract class $PlotValuesCopyWith<$Res> {
  factory $PlotValuesCopyWith(
          PlotValues value, $Res Function(PlotValues) then) =
      _$PlotValuesCopyWithImpl<$Res>;
  $Res call(
      {List<List<double>> values,
      PlotFormat xFormat,
      PlotFormat yFormat,
      double height,
      double width});

  $PlotFormatCopyWith<$Res> get xFormat;
  $PlotFormatCopyWith<$Res> get yFormat;
}

/// @nodoc
class _$PlotValuesCopyWithImpl<$Res> implements $PlotValuesCopyWith<$Res> {
  _$PlotValuesCopyWithImpl(this._value, this._then);

  final PlotValues _value;
  // ignore: unused_field
  final $Res Function(PlotValues) _then;

  @override
  $Res call({
    Object values = freezed,
    Object xFormat = freezed,
    Object yFormat = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      values: values == freezed ? _value.values : values as List<List<double>>,
      xFormat: xFormat == freezed ? _value.xFormat : xFormat as PlotFormat,
      yFormat: yFormat == freezed ? _value.yFormat : yFormat as PlotFormat,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }

  @override
  $PlotFormatCopyWith<$Res> get xFormat {
    if (_value.xFormat == null) {
      return null;
    }
    return $PlotFormatCopyWith<$Res>(_value.xFormat, (value) {
      return _then(_value.copyWith(xFormat: value));
    });
  }

  @override
  $PlotFormatCopyWith<$Res> get yFormat {
    if (_value.yFormat == null) {
      return null;
    }
    return $PlotFormatCopyWith<$Res>(_value.yFormat, (value) {
      return _then(_value.copyWith(yFormat: value));
    });
  }
}

/// @nodoc
abstract class _$PlotValuesCopyWith<$Res> implements $PlotValuesCopyWith<$Res> {
  factory _$PlotValuesCopyWith(
          _PlotValues value, $Res Function(_PlotValues) then) =
      __$PlotValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<List<double>> values,
      PlotFormat xFormat,
      PlotFormat yFormat,
      double height,
      double width});

  @override
  $PlotFormatCopyWith<$Res> get xFormat;
  @override
  $PlotFormatCopyWith<$Res> get yFormat;
}

/// @nodoc
class __$PlotValuesCopyWithImpl<$Res> extends _$PlotValuesCopyWithImpl<$Res>
    implements _$PlotValuesCopyWith<$Res> {
  __$PlotValuesCopyWithImpl(
      _PlotValues _value, $Res Function(_PlotValues) _then)
      : super(_value, (v) => _then(v as _PlotValues));

  @override
  _PlotValues get _value => super._value as _PlotValues;

  @override
  $Res call({
    Object values = freezed,
    Object xFormat = freezed,
    Object yFormat = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_PlotValues(
      values: values == freezed ? _value.values : values as List<List<double>>,
      xFormat: xFormat == freezed ? _value.xFormat : xFormat as PlotFormat,
      yFormat: yFormat == freezed ? _value.yFormat : yFormat as PlotFormat,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlotValues implements _PlotValues {
  const _$_PlotValues(
      {this.values, this.xFormat, this.yFormat, this.height, this.width});

  factory _$_PlotValues.fromJson(Map<String, dynamic> json) =>
      _$_$_PlotValuesFromJson(json);

  @override
  final List<List<double>> values;
  @override
  final PlotFormat xFormat;
  @override
  final PlotFormat yFormat;
  @override
  final double height;
  @override
  final double width;

  @override
  String toString() {
    return 'PlotValues._(values: $values, xFormat: $xFormat, yFormat: $yFormat, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlotValues &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.xFormat, xFormat) ||
                const DeepCollectionEquality()
                    .equals(other.xFormat, xFormat)) &&
            (identical(other.yFormat, yFormat) ||
                const DeepCollectionEquality()
                    .equals(other.yFormat, yFormat)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(xFormat) ^
      const DeepCollectionEquality().hash(yFormat) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @JsonKey(ignore: true)
  @override
  _$PlotValuesCopyWith<_PlotValues> get copyWith =>
      __$PlotValuesCopyWithImpl<_PlotValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlotValuesToJson(this);
  }
}

abstract class _PlotValues implements PlotValues {
  const factory _PlotValues(
      {List<List<double>> values,
      PlotFormat xFormat,
      PlotFormat yFormat,
      double height,
      double width}) = _$_PlotValues;

  factory _PlotValues.fromJson(Map<String, dynamic> json) =
      _$_PlotValues.fromJson;

  @override
  List<List<double>> get values;
  @override
  PlotFormat get xFormat;
  @override
  PlotFormat get yFormat;
  @override
  double get height;
  @override
  double get width;
  @override
  @JsonKey(ignore: true)
  _$PlotValuesCopyWith<_PlotValues> get copyWith;
}

PlotFormat _$PlotFormatFromJson(Map<String, dynamic> json) {
  return _PlotFormat.fromJson(json);
}

/// @nodoc
class _$PlotFormatTearOff {
  const _$PlotFormatTearOff();

// ignore: unused_element
  _PlotFormat call(
      {double min, double max, String axisTitle, double interval}) {
    return _PlotFormat(
      min: min,
      max: max,
      axisTitle: axisTitle,
      interval: interval,
    );
  }

// ignore: unused_element
  PlotFormat fromJson(Map<String, Object> json) {
    return PlotFormat.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlotFormat = _$PlotFormatTearOff();

/// @nodoc
mixin _$PlotFormat {
  double get min;
  double get max;
  String get axisTitle; // AxisFormat axisFormatFunc,
  double get interval;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PlotFormatCopyWith<PlotFormat> get copyWith;
}

/// @nodoc
abstract class $PlotFormatCopyWith<$Res> {
  factory $PlotFormatCopyWith(
          PlotFormat value, $Res Function(PlotFormat) then) =
      _$PlotFormatCopyWithImpl<$Res>;
  $Res call({double min, double max, String axisTitle, double interval});
}

/// @nodoc
class _$PlotFormatCopyWithImpl<$Res> implements $PlotFormatCopyWith<$Res> {
  _$PlotFormatCopyWithImpl(this._value, this._then);

  final PlotFormat _value;
  // ignore: unused_field
  final $Res Function(PlotFormat) _then;

  @override
  $Res call({
    Object min = freezed,
    Object max = freezed,
    Object axisTitle = freezed,
    Object interval = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed ? _value.min : min as double,
      max: max == freezed ? _value.max : max as double,
      axisTitle: axisTitle == freezed ? _value.axisTitle : axisTitle as String,
      interval: interval == freezed ? _value.interval : interval as double,
    ));
  }
}

/// @nodoc
abstract class _$PlotFormatCopyWith<$Res> implements $PlotFormatCopyWith<$Res> {
  factory _$PlotFormatCopyWith(
          _PlotFormat value, $Res Function(_PlotFormat) then) =
      __$PlotFormatCopyWithImpl<$Res>;
  @override
  $Res call({double min, double max, String axisTitle, double interval});
}

/// @nodoc
class __$PlotFormatCopyWithImpl<$Res> extends _$PlotFormatCopyWithImpl<$Res>
    implements _$PlotFormatCopyWith<$Res> {
  __$PlotFormatCopyWithImpl(
      _PlotFormat _value, $Res Function(_PlotFormat) _then)
      : super(_value, (v) => _then(v as _PlotFormat));

  @override
  _PlotFormat get _value => super._value as _PlotFormat;

  @override
  $Res call({
    Object min = freezed,
    Object max = freezed,
    Object axisTitle = freezed,
    Object interval = freezed,
  }) {
    return _then(_PlotFormat(
      min: min == freezed ? _value.min : min as double,
      max: max == freezed ? _value.max : max as double,
      axisTitle: axisTitle == freezed ? _value.axisTitle : axisTitle as String,
      interval: interval == freezed ? _value.interval : interval as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlotFormat implements _PlotFormat {
  const _$_PlotFormat({this.min, this.max, this.axisTitle, this.interval});

  factory _$_PlotFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_PlotFormatFromJson(json);

  @override
  final double min;
  @override
  final double max;
  @override
  final String axisTitle;
  @override // AxisFormat axisFormatFunc,
  final double interval;

  @override
  String toString() {
    return 'PlotFormat(min: $min, max: $max, axisTitle: $axisTitle, interval: $interval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlotFormat &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.axisTitle, axisTitle) ||
                const DeepCollectionEquality()
                    .equals(other.axisTitle, axisTitle)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(axisTitle) ^
      const DeepCollectionEquality().hash(interval);

  @JsonKey(ignore: true)
  @override
  _$PlotFormatCopyWith<_PlotFormat> get copyWith =>
      __$PlotFormatCopyWithImpl<_PlotFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlotFormatToJson(this);
  }
}

abstract class _PlotFormat implements PlotFormat {
  const factory _PlotFormat(
      {double min,
      double max,
      String axisTitle,
      double interval}) = _$_PlotFormat;

  factory _PlotFormat.fromJson(Map<String, dynamic> json) =
      _$_PlotFormat.fromJson;

  @override
  double get min;
  @override
  double get max;
  @override
  String get axisTitle;
  @override // AxisFormat axisFormatFunc,
  double get interval;
  @override
  @JsonKey(ignore: true)
  _$PlotFormatCopyWith<_PlotFormat> get copyWith;
}
