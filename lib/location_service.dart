/*
 * Copyright (c) 2020 Virginia Tech Transportation Institute. All rights reserved.
 */

import 'dart:async';

import 'package:background_location/background_location.dart';

class LocationService {
  final _location = BackgroundLocation();

//  BackgroundLocation _currentLocation;

//  Future<BackgroundLocation> getLocation() async {
//    try {
//      var userLocation = await location.getLocation();
//      _currentLocation = userLocation;
//    } on Exception catch (e) {
//      print('Could not get location: ${e.toString()}');
//    }
//    return _currentLocation;
//  }

  final StreamController<Location> _locationController = StreamController<Location>.broadcast();

  Stream<Location> get locationStream => _locationController.stream.asBroadcastStream();

  Future<Location> get location async => _location.getCurrentLocation();

  LocationService() {
    print("HIKER: Init LocationService()");

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
          if (location == null) return;
          print("HIKER: speed = ${location.speed} mps, lat = ${location.latitude}, lon = ${location.longitude}");
          _locationController.add(location);
        });
      },
      onDenied: () {},
    );
  }

  void startLocationService() {
    BackgroundLocation.startLocationService();
  }

  void stopLocationService() {
    BackgroundLocation.startLocationService();
  }
}
