// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DataArchiveToJson(DataArchive instance) =>
    <String, dynamic>{};

_$_DataArchive _$_$_DataArchiveFromJson(Map<String, dynamic> json) {
  return _$_DataArchive(
    hikeMetrics: json['hikeMetrics'] == null
        ? null
        : HikeMetrics.fromJson(json['hikeMetrics'] as Map<String, dynamic>),
    locationHistory: (json['locationHistory'] as List)
        ?.map((e) => e == null
            ? null
            : LocationStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    elevationPlot: json['elevationPlot'] == null
        ? null
        : PlotValues.fromJson(json['elevationPlot'] as Map<String, dynamic>),
    speedPlot: json['speedPlot'] == null
        ? null
        : PlotValues.fromJson(json['speedPlot'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataArchiveToJson(_$_DataArchive instance) =>
    <String, dynamic>{
      'hikeMetrics': instance.hikeMetrics,
      'locationHistory': instance.locationHistory,
      'elevationPlot': instance.elevationPlot,
      'speedPlot': instance.speedPlot,
    };
