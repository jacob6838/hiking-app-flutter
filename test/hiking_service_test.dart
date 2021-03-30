import 'package:flutter_test/flutter_test.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/hike_metrics.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:background_location/background_location.dart';
import 'package:kt_dart/collection.dart';

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
    expect(actual.accuracy, LocationAccuracyType.high);
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

  test('getAvgSpeed simple', () {
    const prevAvgSpeedMetersPerSec = 1.0;
    const previousDurationSec = 5.0;
    const updatePeriodSec = 5.0;
    const currentSpeedMetersPerSec = 2.0;

    final actual = getAvgSpeed(prevAvgSpeedMetersPerSec, previousDurationSec, updatePeriodSec, currentSpeedMetersPerSec);

    expect(actual, 1.5);
  });

  test('getAvgSpeed large difference', () {
    const prevAvgSpeedMetersPerSec = 1.0;
    const previousDurationSec = 99.0;
    const updatePeriodSec = 1.0;
    const currentSpeedMetersPerSec = 101.0;

    final actual = getAvgSpeed(prevAvgSpeedMetersPerSec, previousDurationSec, updatePeriodSec, currentSpeedMetersPerSec);

    expect(actual, 2);
  });

  test('getAvgSpeed zero', () {
    const prevAvgSpeedMetersPerSec = 1.0;
    const previousDurationSec = 1.0;
    const updatePeriodSec = 1.0;
    const currentSpeedMetersPerSec = 0.0;

    final actual = getAvgSpeed(prevAvgSpeedMetersPerSec, previousDurationSec, updatePeriodSec, currentSpeedMetersPerSec);

    expect(actual, 0.5);
  });

  // HikeMetrics accumulateMetrics(
  //     HikeMetrics prevMetrics,
  //     LocationStatus currLoc,
  //     double deltaDistance,
  //     KtList<LocationStatus> locationHistory,
  //     double updatePeriodSec,
  //     ) {
  //   final speedMetersPerSec = deltaDistance / updatePeriodSec;
  //
  //   final deltaAltitude = currLoc.altitude - prevMetrics.altitude;
  //
  //   return prevMetrics.copyWith(
  //     latitude: currLoc.latitude,
  //     longitude: currLoc.longitude,
  //     altitude: currLoc.altitude,
  //     speedMetersPerSec: speedMetersPerSec,
  //     headingDegrees: currLoc.headingDegrees,
  //     altitudeMax: max(prevMetrics.altitudeMax, currLoc.altitude),
  //     altitudeMin: min(prevMetrics.altitudeMin, currLoc.altitude),
  //     speedMax: max(prevMetrics.speedMax, currLoc.speedMetersPerSec),
  //     speedMin: min(prevMetrics.speedMin, currLoc.speedMetersPerSec),
  //     averageSpeedMetersPerSec: getAvgSpeed(
  //       prevMetrics.averageSpeedMetersPerSec,
  //       prevMetrics.metricPeriodSeconds,
  //       updatePeriodSec,
  //       speedMetersPerSec,
  //     ),
  //     netHeadingDegrees: 1.0,
  //     // Heading
  //     distanceTraveled: prevMetrics.distanceTraveled + deltaDistance,
  //     netElevationChange: currLoc.altitude - prevMetrics.altitudeStart,
  //     cumulativeClimbMeters:
  //     deltaAltitude > 0 ? prevMetrics.cumulativeClimbMeters + deltaAltitude : prevMetrics.cumulativeClimbMeters,
  //     cumulativeDescentMeters:
  //     deltaAltitude < 0 ? prevMetrics.cumulativeDescentMeters - deltaAltitude : prevMetrics.cumulativeDescentMeters,
  //     metricPeriodSeconds: prevMetrics.metricPeriodSeconds + updatePeriodSec,
  //   );
  // }

  test('Test accumulateMetrics', () {
    const prevMetrics = HikeMetrics(
      latitude: 39.9637201,
      longitude: -105.1196951,
      altitude: 1604.4,
      speedMetersPerSec: 1,
      headingDegrees: 1,
      altitudeMax: 100,
      altitudeMin: 50,
      altitudeStart: 55,
      speedMax: 20,
      speedMin: 5,
      averageSpeedMetersPerSec: 10,
      netHeadingDegrees: 1.0,
      distanceTraveled: 100,
      netElevationChange: 25,
      cumulativeClimbMeters: 100,
      cumulativeDescentMeters: 75,
      metricPeriodSeconds: 50,);
    const currLoc = LocationStatus(
      latitude: 1.2,
      longitude: 2.3,
      accuracy: LocationAccuracyType.high,
      altitude: 5000,
      speedMetersPerSec: 50,
      speedAccuracy: LocationAccuracyType.medium,
      headingDegrees: 7.1,
      timeStampSec: 456,
    );
    const deltaDistance = 5.0;
    const locationHistory = KtList<LocationStatus>.empty();
    const updatePeriodSec = 10.0;

    final actual = accumulateMetrics(
      prevMetrics,
      currLoc,
      deltaDistance,
      locationHistory,
      updatePeriodSec,
    );

    expect(actual.altitudeMax, currLoc.altitude);
    expect(actual.altitudeMin, prevMetrics.altitudeMin);
    expect(actual.speedMax, currLoc.speedMetersPerSec);
    expect(actual.speedMin, prevMetrics.speedMin);
    expect(actual.distanceTraveled, prevMetrics.distanceTraveled + deltaDistance);
    expect(actual.netElevationChange, currLoc.altitude - prevMetrics.altitudeStart);
    expect(actual.cumulativeClimbMeters, prevMetrics.cumulativeClimbMeters + currLoc.altitude - prevMetrics.altitude);
    expect(actual.cumulativeDescentMeters, prevMetrics.cumulativeDescentMeters);
    expect(actual.metricPeriodSeconds, prevMetrics.metricPeriodSeconds + updatePeriodSec);
  });
}
