import 'dart:async';

import 'package:background_location/background_location.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:location/location.dart' as loc;

class LocationService {
  final _location = BackgroundLocation();
  loc.Location locLocation = loc.Location();

 // BackgroundLocation _currentLocation;

 // Future<BackgroundLocation> getLocation() async {
 //   try {
 //     var userLocation = await location.getLocation();
 //     _currentLocation = userLocation;
 //   } on Exception catch (e) {
 //     print('Could not get location: ${e.toString()}');
 //   }
 //   return _currentLocation;
 // }

  final StreamController<Location> _locationController = StreamController<Location>.broadcast();

  Stream<Location> get locationStream => _locationController.stream.asBroadcastStream();

  Future<Location> get location async => _location.getCurrentLocation();

  LocationService() {
    print("HIKER: Init LocationService()");
  }

  void startLocationService() {
    BackgroundLocation.startLocationService();
  }

  void stopLocationService() {
    BackgroundLocation.stopLocationService();
  }

  void startLocationUpdates() {
    // Request permission to use location
    BackgroundLocation.getPermissions(
      onGranted: () async {
        BackgroundLocation.setAndroidNotification(
          title: "Hiking App",
          message: "Using location",
          icon: "@mipmap/ic_launcher",
        );
        startLocationService();
        BackgroundLocation.getLocationUpdates((location) {
          if (location != null) {
            _locationController.add(location);
          }
        });
      },
      onDenied: () {},
    );
  }

  Future<bool> locationAlwaysGranted() async => Permission.locationAlways.status.isGranted;

  Future<bool> locationDisabled() async => Permission.location.isDenied;

  Future<bool> requestLocationAlways() async => Permission.locationAlways.request().isGranted;

  Future<bool> requestEnableLocationAlways() async {
    var _serviceEnabled = await locationAlwaysGranted();
    if (!_serviceEnabled) {
      _serviceEnabled = await requestLocationAlways();
    }
    return _serviceEnabled;
  }

  Future<bool> requestEnableGps() async {
    var _serviceEnabled = await locLocation.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await locLocation.requestService();
    }
    return _serviceEnabled;
  }
}
