import 'package:hiking_app/filters/exponential_average_filter.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';

class LocationFilter {
  ExponentialAverageFilter _latitudeFilter;
  ExponentialAverageFilter _longitudeFilter;
  ExponentialAverageFilter _accuracyFilter;
  ExponentialAverageFilter _altitudeFilter;
  ExponentialAverageFilter _speedFilter;
  ExponentialAverageFilter _speedAccuracyFilter;
  ExponentialAverageFilter _headingFilter;

  LocationFilter(LocationStatus loc, {
    double latScale = 0.4,
    double longScale = 0.4,
    double accuracyScale = 0.4,
    double altScale = 0.4,
    double speedScale = 0.4,
    double speedAccuracyScale = 0.4,
    double headingScale = 0.4,
    }
  ) {
    _latitudeFilter = ExponentialAverageFilter(latScale, loc.latitude);
    _longitudeFilter = ExponentialAverageFilter(longScale, loc.longitude);
    _accuracyFilter = ExponentialAverageFilter(accuracyScale, loc.accuracy.value.toDouble());
    _altitudeFilter = ExponentialAverageFilter(altScale, loc.altitude);
    _speedFilter = ExponentialAverageFilter(speedScale, loc.speedMetersPerSec);
    _speedAccuracyFilter = ExponentialAverageFilter(speedAccuracyScale, loc.speedAccuracy.value.toDouble());
    _headingFilter = ExponentialAverageFilter(headingScale, loc.headingDegrees);
  }


  LocationStatus getValue(LocationStatus loc) => LocationStatus(
      latitude: _latitudeFilter.getValue(loc.latitude),
      longitude: _longitudeFilter.getValue(loc.longitude),
      accuracy: toAccuracyType(_accuracyFilter.getValue(loc.accuracy.value.toDouble())),
      altitude: _altitudeFilter.getValue(loc.altitude),
      speedMetersPerSec: _speedFilter.getValue(loc.speedMetersPerSec),
      speedAccuracy: toAccuracyType(_speedAccuracyFilter.getValue(loc.speedAccuracy.value.toDouble())),
      headingDegrees: _headingFilter.getValue(loc.headingDegrees),
    );
}