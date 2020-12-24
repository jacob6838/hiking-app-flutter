import 'package:flutter_test/flutter_test.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:location/location.dart';

void main() {
  test('Verify toLocationStatus converts values correctly', () {
    final Map<String, double> myData = {
      'latitude': 1.2,
      'longitude': 2.4,
      'accuracy': 3.5,
      'altitude': 4.6,
      'speed': 5.7,
      'speed_accuracy': 6.8,
      'heading': 7.4,
      'time': 8800.0,
    };

    final actual = toLocationStatus(LocationData.fromMap(myData));

    expect(actual.latitude, 1.2);
    expect(actual.longitude, 2.4);
    expect(actual.accuracyHdop, 3.5);
    expect(actual.altitude, 4.6);
    expect(actual.speedMetersPerSec, 5.7);
    expect(actual.speedAccuracyHdop, 6.8);
    expect(actual.headingDegrees, 7.4);
    expect(actual.timeStampSec, 9);
  });
}
