import 'package:hiking_app/location_service.dart';
import 'package:hiking_app/models/hike_metrics.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:kt_dart/collection.dart';
import 'package:location/location.dart';
import 'package:maps_toolkit/maps_toolkit.dart';
import 'package:rxdart/rxdart.dart';

const int millisecondsPerSecond = 1000;

/// Number of seconds between updates
const int updateIntervalSec = 10;

/// Minimum distance between location updates published to UI.
/// TODO: Dynamically update this based on instantaneous accuracy.
const int minimumDistanceThreshold = 4;

class HikingService {
  final LocationService _locationService;
  bool _hikeIsActive = false;
  HikeMetrics _hikeMetricsTotal = const HikeMetrics();
  int _lastUpdateTimeSec = 0;

  /// List of all points for the current hike
  final KtMutableList<LocationStatus> _currentPath = mutableListOf();

  int reportPeriodSec;

  /// Previous position used to determine when a location change is sufficiently large to warrant a hiker status update.
  LocationStatus _prevLocation;

  final BehaviorSubject<bool> _activeStatusSub = BehaviorSubject.seeded(false);
  final BehaviorSubject<LocationStatus> _currentLocationStatusSub = BehaviorSubject.seeded(const LocationStatus());
  final BehaviorSubject<HikeMetrics> _currentHikerStatusSub = BehaviorSubject.seeded(const HikeMetrics());

  HikingService({LocationService locationService})
      : _lastUpdateTimeSec = 0,
        _locationService = locationService {
    _locationService.locationStream.where((_) => _hikeIsActive).map(toLocationStatus).listen(_handleLocationUpdate);
  }

  Stream<bool> get hikingMetrics$ => _activeStatusSub.stream.asBroadcastStream();

  Stream<LocationStatus> get currentLocationStatus$ => _currentLocationStatusSub.stream.asBroadcastStream();

  Stream<HikeMetrics> get currentHikerStatus$ => _currentHikerStatusSub.stream.asBroadcastStream();

  Future<void> toggleStatus() async {
    _hikeIsActive = !_hikeIsActive;
    if (_hikeIsActive) {
      _prevLocation = toLocationStatus(await _locationService.location);
      _hikeMetricsTotal = getInitialMetrics(_prevLocation, getCurrentTimeSeconds());
      _currentPath.clear();
    }
    _activeStatusSub.add(_hikeIsActive);
  }

  /// Process an updated location from device
  void _handleLocationUpdate(LocationStatus locationStatus) {
    final deltaSec = locationStatus.timeStampSec - _prevLocation.timeStampSec;
    if (deltaSec < updateIntervalSec) return;

    final deltaDistance = SphericalUtil.computeDistanceBetween(
      LatLng(locationStatus.latitude, locationStatus.longitude),
      LatLng(_prevLocation.latitude, _prevLocation.longitude),
    );
    if (deltaDistance < minimumDistanceThreshold) return;

    _prevLocation = locationStatus;

    /// Save location update to current hike
    _currentPath.add(_prevLocation);

    /// Calculate hiker status update and publish value for UI
    final currStatus = accumulateMetrics(_currentHikerStatusSub.value, _prevLocation, _currentPath, reportPeriodSec);
    _currentHikerStatusSub.add(currStatus);
  }
}

/// Return initial hike metrics based on current location
HikeMetrics getInitialMetrics(LocationStatus curLoc, int currTimeSeconds) {
  return HikeMetrics(
    latitudeStart: curLoc.latitude,
    longitudeStart: curLoc.longitude,
    latitudeEnd: curLoc.latitude,
    longitudeEnd: curLoc.longitude,
    altitude: curLoc.altitude,
    altitudeMax: curLoc.altitude,
    altitudeMin: curLoc.altitude,
    speedMetersPerSec: curLoc.speedMetersPerSec,
    averageSpeedMetersPerSec: curLoc.speedMetersPerSec,
    headingDegrees: curLoc.headingDegrees,
    locationAccuracy: curLoc.accuracy,
    speedAccuracy: curLoc.speedAccuracy,
    startTimeSeconds: currTimeSeconds,
  );
}

/// Create LocationStatus object from Device location data
LocationStatus toLocationStatus(LocationData locationData) {
  return LocationStatus(
    latitude: locationData.latitude ?? 0.0,
    longitude: locationData.longitude ?? 0.0,
    accuracy: toAccuracyType(locationData.accuracy ?? 0.0),
    altitude: locationData.altitude ?? 0.0,
    speedMetersPerSec: locationData.speed ?? 0.0,
    speedAccuracy: toAccuracyType(locationData.speedAccuracy ?? 0.0),
    headingDegrees: locationData.heading ?? 0.0,
    timeStampSec: ((locationData.time ?? 0) / millisecondsPerSecond).round(),
  );
}

/// Calculate hiker status update data
HikeMetrics accumulateMetrics(
  HikeMetrics prevMetrics,
  LocationStatus currLoc,
  KtList<LocationStatus> locationHistory,
  int reportPeriodSec,
) {
  return const HikeMetrics();
  // _distanceTraveled += _distanceDelta.abs();
  // final hikerData = HikerStatus(
  //   latitude: _distanceTraveled.roundToDouble(),
  //   elevationChange: 0.0,
  //   timeElapsedSec: delta ~/ 1000, timeElapsed: (delta ~/ 1000).toString(),
  // );
}

/// Convert milliseconds since epoch value to seconds
int toSeconds(double timeStamp) => timeStamp ~/ millisecondsPerSecond;

/// Return the current time in seconds since epoch.
int getCurrentTimeSeconds() => DateTime.now().millisecondsSinceEpoch ~/ millisecondsPerSecond;

/// Convert an accuracy value from Flutter location API to an enum
LocationAccuracyType toAccuracyType(double accuracy) {
  return LocationAccuracyType.low;
}
