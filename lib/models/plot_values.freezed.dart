// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'plot_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlotValuesTearOff {
  const _$PlotValuesTearOff();

// ignore: unused_element
  _PlotValues _hidden(
      {List<FlSpot> values,
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
}

/// @nodoc
// ignore: unused_element
const $PlotValues = _$PlotValuesTearOff();

/// @nodoc
mixin _$PlotValues {
  List<FlSpot> get values;
  PlotFormat get xFormat;
  PlotFormat get yFormat;
  double get height;
  double get width;

  @JsonKey(ignore: true)
  $PlotValuesCopyWith<PlotValues> get copyWith;
}

/// @nodoc
abstract class $PlotValuesCopyWith<$Res> {
  factory $PlotValuesCopyWith(
          PlotValues value, $Res Function(PlotValues) then) =
      _$PlotValuesCopyWithImpl<$Res>;
  $Res call(
      {List<FlSpot> values,
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
      values: values == freezed ? _value.values : values as List<FlSpot>,
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
      {List<FlSpot> values,
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
      values: values == freezed ? _value.values : values as List<FlSpot>,
      xFormat: xFormat == freezed ? _value.xFormat : xFormat as PlotFormat,
      yFormat: yFormat == freezed ? _value.yFormat : yFormat as PlotFormat,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

/// @nodoc
class _$_PlotValues implements _PlotValues {
  const _$_PlotValues(
      {this.values, this.xFormat, this.yFormat, this.height, this.width});

  @override
  final List<FlSpot> values;
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
    return 'PlotValues._hidden(values: $values, xFormat: $xFormat, yFormat: $yFormat, height: $height, width: $width)';
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
}

abstract class _PlotValues implements PlotValues {
  const factory _PlotValues(
      {List<FlSpot> values,
      PlotFormat xFormat,
      PlotFormat yFormat,
      double height,
      double width}) = _$_PlotValues;

  @override
  List<FlSpot> get values;
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

/// @nodoc
class _$PlotFormatTearOff {
  const _$PlotFormatTearOff();

// ignore: unused_element
  _PlotFormat call(
      {double min,
      double max,
      String axisTitle,
      String Function(double) axisFormatFunc,
      double interval,
      TextStyle axisTextStyle,
      TextStyle Function(double) axisTextStyleFunc}) {
    return _PlotFormat(
      min: min,
      max: max,
      axisTitle: axisTitle,
      axisFormatFunc: axisFormatFunc,
      interval: interval,
      axisTextStyle: axisTextStyle,
      axisTextStyleFunc: axisTextStyleFunc,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlotFormat = _$PlotFormatTearOff();

/// @nodoc
mixin _$PlotFormat {
  double get min;
  double get max;
  String get axisTitle;
  String Function(double) get axisFormatFunc;
  double get interval;
  TextStyle get axisTextStyle;
  TextStyle Function(double) get axisTextStyleFunc;

  @JsonKey(ignore: true)
  $PlotFormatCopyWith<PlotFormat> get copyWith;
}

/// @nodoc
abstract class $PlotFormatCopyWith<$Res> {
  factory $PlotFormatCopyWith(
          PlotFormat value, $Res Function(PlotFormat) then) =
      _$PlotFormatCopyWithImpl<$Res>;
  $Res call(
      {double min,
      double max,
      String axisTitle,
      String Function(double) axisFormatFunc,
      double interval,
      TextStyle axisTextStyle,
      TextStyle Function(double) axisTextStyleFunc});
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
    Object axisFormatFunc = freezed,
    Object interval = freezed,
    Object axisTextStyle = freezed,
    Object axisTextStyleFunc = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed ? _value.min : min as double,
      max: max == freezed ? _value.max : max as double,
      axisTitle: axisTitle == freezed ? _value.axisTitle : axisTitle as String,
      axisFormatFunc: axisFormatFunc == freezed
          ? _value.axisFormatFunc
          : axisFormatFunc as String Function(double),
      interval: interval == freezed ? _value.interval : interval as double,
      axisTextStyle: axisTextStyle == freezed
          ? _value.axisTextStyle
          : axisTextStyle as TextStyle,
      axisTextStyleFunc: axisTextStyleFunc == freezed
          ? _value.axisTextStyleFunc
          : axisTextStyleFunc as TextStyle Function(double),
    ));
  }
}

/// @nodoc
abstract class _$PlotFormatCopyWith<$Res> implements $PlotFormatCopyWith<$Res> {
  factory _$PlotFormatCopyWith(
          _PlotFormat value, $Res Function(_PlotFormat) then) =
      __$PlotFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {double min,
      double max,
      String axisTitle,
      String Function(double) axisFormatFunc,
      double interval,
      TextStyle axisTextStyle,
      TextStyle Function(double) axisTextStyleFunc});
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
    Object axisFormatFunc = freezed,
    Object interval = freezed,
    Object axisTextStyle = freezed,
    Object axisTextStyleFunc = freezed,
  }) {
    return _then(_PlotFormat(
      min: min == freezed ? _value.min : min as double,
      max: max == freezed ? _value.max : max as double,
      axisTitle: axisTitle == freezed ? _value.axisTitle : axisTitle as String,
      axisFormatFunc: axisFormatFunc == freezed
          ? _value.axisFormatFunc
          : axisFormatFunc as String Function(double),
      interval: interval == freezed ? _value.interval : interval as double,
      axisTextStyle: axisTextStyle == freezed
          ? _value.axisTextStyle
          : axisTextStyle as TextStyle,
      axisTextStyleFunc: axisTextStyleFunc == freezed
          ? _value.axisTextStyleFunc
          : axisTextStyleFunc as TextStyle Function(double),
    ));
  }
}

/// @nodoc
class _$_PlotFormat implements _PlotFormat {
  const _$_PlotFormat(
      {this.min,
      this.max,
      this.axisTitle,
      this.axisFormatFunc,
      this.interval,
      this.axisTextStyle,
      this.axisTextStyleFunc});

  @override
  final double min;
  @override
  final double max;
  @override
  final String axisTitle;
  @override
  final String Function(double) axisFormatFunc;
  @override
  final double interval;
  @override
  final TextStyle axisTextStyle;
  @override
  final TextStyle Function(double) axisTextStyleFunc;

  @override
  String toString() {
    return 'PlotFormat(min: $min, max: $max, axisTitle: $axisTitle, axisFormatFunc: $axisFormatFunc, interval: $interval, axisTextStyle: $axisTextStyle, axisTextStyleFunc: $axisTextStyleFunc)';
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
            (identical(other.axisFormatFunc, axisFormatFunc) ||
                const DeepCollectionEquality()
                    .equals(other.axisFormatFunc, axisFormatFunc)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.axisTextStyle, axisTextStyle) ||
                const DeepCollectionEquality()
                    .equals(other.axisTextStyle, axisTextStyle)) &&
            (identical(other.axisTextStyleFunc, axisTextStyleFunc) ||
                const DeepCollectionEquality()
                    .equals(other.axisTextStyleFunc, axisTextStyleFunc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(axisTitle) ^
      const DeepCollectionEquality().hash(axisFormatFunc) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(axisTextStyle) ^
      const DeepCollectionEquality().hash(axisTextStyleFunc);

  @JsonKey(ignore: true)
  @override
  _$PlotFormatCopyWith<_PlotFormat> get copyWith =>
      __$PlotFormatCopyWithImpl<_PlotFormat>(this, _$identity);
}

abstract class _PlotFormat implements PlotFormat {
  const factory _PlotFormat(
      {double min,
      double max,
      String axisTitle,
      String Function(double) axisFormatFunc,
      double interval,
      TextStyle axisTextStyle,
      TextStyle Function(double) axisTextStyleFunc}) = _$_PlotFormat;

  @override
  double get min;
  @override
  double get max;
  @override
  String get axisTitle;
  @override
  String Function(double) get axisFormatFunc;
  @override
  double get interval;
  @override
  TextStyle get axisTextStyle;
  @override
  TextStyle Function(double) get axisTextStyleFunc;
  @override
  @JsonKey(ignore: true)
  _$PlotFormatCopyWith<_PlotFormat> get copyWith;
}
