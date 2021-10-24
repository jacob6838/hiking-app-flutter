import 'package:flutter_test/flutter_test.dart';
import 'package:hiking_app/filters/location_filter.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';

void main() {
  test('Verify locationFilter', () {
    final LocationFilter filter = LocationFilter(const LocationStatus());
    final LocationStatus actual = filter.getValue(const LocationStatus(
      latitude: 1
    ));
    print(actual.latitude);
    print(filter.currLat);

    final LocationStatus actual2 = filter.getValue(const LocationStatus(
        latitude: 10
    ));
    print(actual2.latitude);
    print(filter.currLat);
  });

  test('Verify locationFilter all values', () {
    final LocationFilter filter = LocationFilter(const LocationStatus());
    final LocationStatus actual = filter.getValue(const LocationStatus(
        latitude: 1,
      longitude: 1,
      accuracy: LocationAccuracyType.high,
      altitude: 1,
      speedMetersPerSec: 1,
      speedAccuracy: LocationAccuracyType.high,
      headingDegrees: 1,
    ));
    expect(actual.latitude, isNot(0.0));
    expect(actual.longitude, isNot(0.0));
    expect(actual.accuracy, isNot(LocationAccuracyType.high));
    expect(actual.altitude, isNot(0.0));
    expect(actual.speedMetersPerSec, isNot(0.0));
    expect(actual.speedAccuracy, isNot(0.0));
    expect(actual.headingDegrees, isNot(0.0));
  });
}