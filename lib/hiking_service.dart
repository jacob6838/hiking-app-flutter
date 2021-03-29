import 'dart:math';

import 'package:background_location/background_location.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiking_app/location_service.dart';
import 'package:hiking_app/models/hike_metrics.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:kt_dart/collection.dart';
import 'package:maps_toolkit/maps_toolkit.dart';
import 'package:rxdart/rxdart.dart';

import 'main.dart';
import 'models/plot_values.dart';

const int millisecondsPerSecond = 1000;

// - scaling of altitude plot was static
// - bottom plot legend is illedgible
// - 500 foot jump on Mom's phone that was not counted in cumulative ascent/descent
// - Jacob's phone stopped updating (battery optimization??)
// - update metrics even if no new data

/// Number of seconds between updates
const int updateIntervalSec = 30;

/// Minimum distance between location updates published to UI.
/// TODO: Dynamically update this based on instantaneous accuracy.
const int minimumDistanceThreshold = 4;

class HikingService {
  final LocationService _locationService;
  bool _hikeIsActive = false;
  HikeMetrics _hikeMetricsTotal = const HikeMetrics();
  double _lastUpdateTimeSec = 0.0;
  PlotValues elevationPlotValues;

  /// List of all points for the current hike
  final KtMutableList<LocationStatus> _currentPath = mutableListOf();

  int reportPeriodSec;

  /// Previous position used to determine when a location change is sufficiently large to warrant a hiker status update.
  LocationStatus _prevLocation;

  final BehaviorSubject<bool> _activeStatusSub = BehaviorSubject.seeded(false);
  final BehaviorSubject<LocationStatus> _currentLocationStatusSub = BehaviorSubject.seeded(const LocationStatus());
  final BehaviorSubject<HikeMetrics> _currentHikerMetricsSub = BehaviorSubject.seeded(const HikeMetrics());

  HikingService({LocationService locationService})
      : _lastUpdateTimeSec = 0,
        _locationService = locationService {
    _locationService.locationStream
        .where((_) => _hikeIsActive)
        // .doOnData((event) => print("HIKER: location update received."))
        .map(toLocationStatus)
        .listen(_handleLocationUpdate);
    // updateCurrentLocation();
  }


  final BehaviorSubject<PlotValues> elevationPlot = BehaviorSubject<PlotValues>();

  Stream<bool> get currentHikerStatus$ => _activeStatusSub.stream.asBroadcastStream();

  BehaviorSubject<LocationStatus> get currentLocationStatus => BehaviorSubject.seeded(const LocationStatus());

  Stream<HikeMetrics> get currentHikerMetrics$ => _currentHikerMetricsSub.stream.asBroadcastStream();

  Future<void> toggleStatus(HikingService hikingService) async {
    _hikeIsActive = !_hikeIsActive;
    _activeStatusSub.add(_hikeIsActive);
    if (_hikeIsActive) {
      hikingService._locationService.startLocationUpdates();
      // _prevLocation = toLocationStatus(await _locationService.location);
      _prevLocation = const LocationStatus();
      // _hikeMetricsTotal = getInitialMetrics(_prevLocation, getCurrentTimeSeconds());
      _currentPath.clear();
      elevationPlotValues = PlotValues.build(
        values: [],
        xFormat: PlotFormat(
          axisTitle: "Time",
          axisFormatFunc: (value) {
            final int minutes = (value / secPerMin).round() % minPerHour;
            final int hours = ((value / secPerMin) / minPerHour).floor();
            return "$hours:$minutes";
          },
        ),
        yFormat: const PlotFormat(
          axisTitle: "Elevation (ft)",
        ),
        height: 150,
        width: 300,
      );
    }
    else {
      hikingService._locationService.stopLocationService();
    }
  }

  // Future<void> updateCurrentLocation() async {
  //   await _locationService.location.then((location) => currentLocationStatus.add(toLocationStatus(location)));
  // }

  /// Process an updated location from device
  void _handleLocationUpdate(LocationStatus locationStatus) {
    currentLocationStatus.add(locationStatus);

    /// If first point, initialize variables and return
    if (_prevLocation == null || _prevLocation.timeStampSec == 0.0) {
      _prevLocation = locationStatus;
      _hikeMetricsTotal = getInitialMetrics(_prevLocation, getCurrentTimeSeconds());
      _currentHikerMetricsSub.add(_hikeMetricsTotal);
      return;
    }

    /// Check time elapsed, if less than updateIntervalSec then return
    final double deltaSec = locationStatus.timeStampSec - _prevLocation.timeStampSec;
    if (deltaSec < updateIntervalSec) return;

    final deltaDistance = SphericalUtil.computeDistanceBetween(
      LatLng(locationStatus.latitude, locationStatus.longitude),
      LatLng(_prevLocation.latitude, _prevLocation.longitude),
    ).toDouble();
    if (deltaDistance < minimumDistanceThreshold) {
      _prevLocation = _prevLocation.copyWith(timeStampSec: locationStatus.timeStampSec);
    } else {
      _prevLocation = locationStatus;
    }

    /// Save location update to current hike
    _currentPath.add(_prevLocation);

    /// Calculate hiker status update and publish value for UI
    final currStatus = accumulateMetrics(
      _currentHikerMetricsSub.value,
      _prevLocation,
      deltaDistance,
      _currentPath,
      deltaSec,
    );
    _currentHikerMetricsSub.add(currStatus);
    elevationPlot.add(toElevationPlotValues(currStatus));
  }

  PlotValues toElevationPlotValues(HikeMetrics metric) {
    List<FlSpot> elevationValues = elevationPlotValues.values;
    elevationValues.add(FlSpot(metric.metricPeriodSeconds, metric.altitude * 3.28084));



    return elevationPlotValues.copyWith(
      values: elevationValues,
      xFormat: elevationPlotValues.xFormat.copyWith(
        min: 0,
        max: metric.metricPeriodSeconds*1.1,
        interval: metric.metricPeriodSeconds*1.1/5,
      ),
      yFormat: elevationPlotValues.yFormat.copyWith(
        min: metric.altitudeMin*.9 * 3.28084,
        max: metric.altitudeMax*1.1 * 3.28084,
        interval: (metric.altitudeMax*1.1 - metric.altitudeMin*.9)/5 * 3.28084,
      ),
      width: 300,
    );
  }
}

/// Return initial hike metrics based on current location
HikeMetrics getInitialMetrics(LocationStatus curLoc, double currTimeSeconds) {
  return HikeMetrics(
    latitudeStart: curLoc.latitude,
    longitudeStart: curLoc.longitude,
    altitudeStart: curLoc.altitude,
    latitude: curLoc.latitude,
    longitude: curLoc.longitude,
    altitude: curLoc.altitude,
    altitudeMax: curLoc.altitude,
    altitudeMin: curLoc.altitude,
    speedMetersPerSec: curLoc.speedMetersPerSec,
    averageSpeedMetersPerSec: curLoc.speedMetersPerSec,
    headingDegrees: curLoc.headingDegrees,
    locationAccuracy: curLoc.accuracy,
    speedAccuracy: curLoc.speedAccuracy,
    timeStartSec: currTimeSeconds,
  );
}

/// Create LocationStatus object from Device location data
LocationStatus toLocationStatus(Location locationData) {
  return LocationStatus(
    latitude: locationData.latitude ?? 0.0,
    longitude: locationData.longitude ?? 0.0,
    accuracy: toAccuracyType(locationData.accuracy ?? 0.0),
    altitude: locationData.altitude ?? 0.0,
    speedMetersPerSec: locationData.speed ?? 0.0,
    // speedAccuracy: toAccuracyType(locationData.speedAccuracy ?? 0.0),
    headingDegrees: locationData.bearing ?? 0.0,
    timeStampSec: toSeconds(locationData.time ?? 0),
  );
}

/// Calculate hiker status update data
HikeMetrics accumulateMetrics(
  HikeMetrics prevMetrics,
  LocationStatus currLoc,
  double deltaDistance,
  KtList<LocationStatus> locationHistory,
  double updatePeriodSec,
) {
  final speedMetersPerSec = deltaDistance / updatePeriodSec;

  final deltaAltitude = currLoc.altitude - prevMetrics.altitude;

  return prevMetrics.copyWith(
    latitude: currLoc.latitude,
    longitude: currLoc.longitude,
    altitude: currLoc.altitude,
    speedMetersPerSec: speedMetersPerSec,
    headingDegrees: currLoc.headingDegrees,
    altitudeMax: max(prevMetrics.altitudeMax, currLoc.altitude),
    altitudeMin: min(prevMetrics.altitudeMin, currLoc.altitude),
    speedMax: max(prevMetrics.speedMax, currLoc.speedMetersPerSec),
    speedMin: min(prevMetrics.speedMin, currLoc.speedMetersPerSec),
    averageSpeedMetersPerSec: getAvgSpeed(
      prevMetrics.averageSpeedMetersPerSec,
      prevMetrics.metricPeriodSeconds,
      updatePeriodSec,
      speedMetersPerSec,
    ),
    netHeadingDegrees: 1.0,
    // Heading
    distanceTraveled: prevMetrics.distanceTraveled + deltaDistance,
    netElevationChange: currLoc.altitude - prevMetrics.altitudeStart,
    cumulativeClimbMeters:
        deltaAltitude > 0 ? prevMetrics.cumulativeClimbMeters + deltaAltitude : prevMetrics.cumulativeClimbMeters,
    cumulativeDescentMeters:
        deltaAltitude < 0 ? prevMetrics.cumulativeDescentMeters - deltaAltitude : prevMetrics.cumulativeDescentMeters,
    metricPeriodSeconds: prevMetrics.metricPeriodSeconds + updatePeriodSec,
  );
  // _distanceTraveled += _distanceDelta.abs();
  // final hikerData = HikerStatus(
  //   latitude: _distanceTraveled.roundToDouble(),
  //   elevationChange: 0.0,
  //   timeElapsedSec: delta ~/ 1000, timeElapsed: (delta ~/ 1000).toString(),
  // );
}

/// Return the distance traveled between the previous hike status end point and the current location
double getAvgSpeed(
  double prevAvgSpeedMetersPerSec,
  double previousDurationSec,
  double updatePeriodSec,
  double currentSpeedMetersPerSec,
) {
  return (prevAvgSpeedMetersPerSec * previousDurationSec + currentSpeedMetersPerSec * updatePeriodSec) /
      (previousDurationSec + updatePeriodSec);
}

/// Convert milliseconds since epoch value to seconds
double toSeconds(double timeStamp) => timeStamp / millisecondsPerSecond;

/// Return the current time in seconds since epoch.
double getCurrentTimeSeconds() => DateTime.now().millisecondsSinceEpoch / millisecondsPerSecond;

/// Convert an accuracy value from Flutter location API to an enum
LocationAccuracyType toAccuracyType(double accuracy) {
  if (accuracy < 8) {
    return LocationAccuracyType.high;
  } else if (accuracy < 25) {
    return LocationAccuracyType.medium;
  } else {
    return LocationAccuracyType.low;
  }
}
