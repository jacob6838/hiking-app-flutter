import 'dart:math';

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

  LocationFilter(LocationStatus loc) {
    _latitudeFilter = ExponentialAverageFilter(loc.latitude, _getVarianceAccuracy(loc.accuracy));
    _longitudeFilter = ExponentialAverageFilter(loc.longitude, _getVarianceAccuracy(loc.accuracy));
    _accuracyFilter = ExponentialAverageFilter(loc.accuracy.value.toDouble(), 1);
    _altitudeFilter = ExponentialAverageFilter(loc.altitude, _getVarianceAccuracy(loc.accuracy)*10);
    _speedFilter = ExponentialAverageFilter(loc.speedMetersPerSec, _getVarianceAccuracy(loc.speedAccuracy));
    _speedAccuracyFilter = ExponentialAverageFilter(loc.speedAccuracy.value.toDouble(), 1);
    _headingFilter = ExponentialAverageFilter(loc.headingDegrees, 1);
  }


  LocationStatus getValue(LocationStatus loc) => LocationStatus(
      latitude: _latitudeFilter.kalmanFilter(loc.latitude, _getVarianceAccuracy(loc.accuracy)),
      longitude: _longitudeFilter.kalmanFilter(loc.longitude, _getVarianceAccuracy(loc.accuracy)),
      accuracy: toAccuracyType(_accuracyFilter.kalmanFilter(loc.accuracy.value.toDouble(), 1)),
      altitude: _altitudeFilter.kalmanFilter(loc.altitude, _getVarianceAccuracy(loc.accuracy)*10),
      speedMetersPerSec: _speedFilter.kalmanFilter(loc.speedMetersPerSec, _getVarianceAccuracy(loc.speedAccuracy)),
      speedAccuracy: toAccuracyType(_speedAccuracyFilter.kalmanFilter(loc.speedAccuracy.value.toDouble(), 1)),
      headingDegrees: _headingFilter.kalmanFilter(loc.headingDegrees, 1),
      timeStampSec: loc.timeStampSec,
    );

  double _getVarianceDouble(double sigma) => pow(sigma, 2.0).toDouble();
  double _getVarianceInt(int sigma) => pow(sigma, 2.0).toDouble();
  double _getVarianceAccuracy(LocationAccuracyType sigma) => pow(sigma.value, 2.0).toDouble();
}