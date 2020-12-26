import 'package:flutter_test/flutter_test.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:background_location/background_location.dart';

void main() {
  test('Verify toLocationStatus converts values correctly', () {
    final loc = Location(
      latitude: 1.2,
      longitude: 2.4,
      accuracy: 3.5,
      altitude: 4.6,
      speed: 5.7,
      // speed_accuracy: 6.8,
      bearing: 7.4,
      time: 8800.0,
    );

    final actual = toLocationStatus(loc);

    expect(actual.latitude, 1.2);
    expect(actual.longitude, 2.4);
    expect(actual.accuracy, LocationAccuracyType.low);
    expect(actual.altitude, 4.6);
    expect(actual.speedMetersPerSec, 5.7);
    expect(actual.speedAccuracy, LocationAccuracyType.low);
    expect(actual.headingDegrees, 7.4);
    expect(actual.timeStampSec, 8.8000);
  });

  test('Verify getInitialMetrics generates correct initial values', () {
    const loc = LocationStatus(
      latitude: 1.2,
      longitude: 2.3,
      accuracy: LocationAccuracyType.high,
      altitude: 4.6,
      speedMetersPerSec: 5.1,
      speedAccuracy: LocationAccuracyType.medium,
      headingDegrees: 7.1,
      timeStampSec: 456,
    );
    final actual = getInitialMetrics(loc, 456);

    expect(actual.latitudeStart, 1.2);
    expect(actual.longitudeStart, 2.3);
    expect(actual.altitudeStart, 4.6);
    expect(actual.latitude, 1.2);
    expect(actual.longitude, 2.3);
    expect(actual.altitude, 4.6);
    expect(actual.altitudeMax, 4.6);
    expect(actual.altitudeMin, 4.6);
    expect(actual.speedMetersPerSec, 5.1);
    expect(actual.averageSpeedMetersPerSec, 5.1);
    expect(actual.headingDegrees, 7.1);
    expect(actual.locationAccuracy, LocationAccuracyType.high);
    expect(actual.speedAccuracy, LocationAccuracyType.medium);
    expect(actual.timeStartSec, 456);
  });
}
