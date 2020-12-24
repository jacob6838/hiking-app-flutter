import 'package:hiking_app/location_service.dart';
import 'package:hiking_app/models/hike_metrics.dart';
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
  bool _hikingActive = false;
  int _startTimeSec = 0;
  int _lastUpdateTimeSec = 0;
  double _distanceTraveled = 0.0;

  /// List of all points for the current hike
  final KtMutableList<LocationStatus> _currentHike = mutableListOf();
  int reportPeriodSec;

  LocationData _prevLocation;

  final BehaviorSubject<bool> _activeStatusSub = BehaviorSubject.seeded(false);
  final BehaviorSubject<LocationStatus> _currentLocationStatusSub = BehaviorSubject.seeded(const LocationStatus());
  final BehaviorSubject<HikeMetrics> _currentHikerStatusSub = BehaviorSubject.seeded(const HikeMetrics());

  HikingService({LocationService locationService})
      : _lastUpdateTimeSec = 0,
        _locationService = locationService {
    _locationService.locationStream.where((_) => _hikingActive).listen(_handleLocationUpdate);
  }

  Stream<bool> get hikingMetrics$ => _activeStatusSub.stream.asBroadcastStream();

  Stream<LocationStatus> get currentLocationStatus$ => _currentLocationStatusSub.stream.asBroadcastStream();

  Stream<HikeMetrics> get currentHikerStatus$ => _currentHikerStatusSub.stream.asBroadcastStream();

  void toggleStatus() {
    _hikingActive = !_hikingActive;
    if (_hikingActive) {
      _startTimeSec = DateTime.now().millisecondsSinceEpoch ~/ millisecondsPerSecond;
      _currentHike.clear();
      _distanceTraveled = 0.0;
    }
    _activeStatusSub.add(_hikingActive);
  }

  /// Process an updated location from device
  void _handleLocationUpdate(LocationData locationData) {
    if (_prevLocation != null) {
      final deltaSec = toSeconds(locationData.time) - toSeconds(_prevLocation.time);
      if (deltaSec < updateIntervalSec) return;

      final deltaDistance = SphericalUtil.computeDistanceBetween(
        LatLng(locationData.latitude, locationData.longitude),
        LatLng(_prevLocation.latitude, _prevLocation.longitude),
      );
      if (deltaDistance < minimumDistanceThreshold) return;
    }

    _prevLocation = locationData;

    /// Save location update to current hike
    final currLocation = toLocationStatus(locationData);
    _currentHike.add(currLocation);

    /// Calculate hiker status update and publish value for UI
    final currStatus = calculateHikerStatusUpdate(_currentHikerStatusSub.value, currLocation, _currentHike, reportPeriodSec);
    _currentHikerStatusSub.add(currStatus);
  }
}

/// Create LocationStatus object from Device location data
LocationStatus toLocationStatus(LocationData locationData) {
  return LocationStatus(
    latitude: locationData.latitude ?? 0.0,
    longitude: locationData.longitude ?? 0.0,
    accuracyHdop: locationData.accuracy ?? 0.0,
    altitude: locationData.altitude ?? 0.0,
    speedMetersPerSec: locationData.speed ?? 0.0,
    speedAccuracyHdop: locationData.speedAccuracy ?? 0.0,
    headingDegrees: locationData.heading ?? 0.0,
    timeStampSec: ((locationData.time ?? 0) / millisecondsPerSecond).round(),
  );
}

/// Calculate hiker status update data
HikeMetrics calculateHikerStatusUpdate(
    HikeMetrics prevHikerStatus, LocationStatus currLoc, KtList<LocationStatus> locationHistory, int reportPeriodSec) {
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
