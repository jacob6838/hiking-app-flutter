import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hiking_app/models/plot_values.dart';

import 'hike_metrics.dart';
import 'location_status.dart';

part 'data_archive.freezed.dart';
part 'data_archive.g.dart';

@freezed
@JsonSerializable()
abstract class DataArchive with _$DataArchive {
  const factory DataArchive({
    @nullable HikeMetrics hikeMetrics,
    @nullable List<LocationStatus> locationHistory,
    @nullable PlotValues elevationPlot,
    @nullable PlotValues speedPlot,
  }) = _DataArchive;
  factory DataArchive.fromJson(Map<String, dynamic> json) => _$DataArchiveFromJson(json);
  Map<String, dynamic> toJson() => _$DataArchiveToJson(this);
}
