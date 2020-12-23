/*
 * Copyright (c) 2020 Virginia Tech Transportation Institute. All rights reserved.
 */

import 'dart:async';

import 'package:location/location.dart';

class LocationService {
  final _location = Location();

//  LocationData _currentLocation;

//  Future<LocationData> getLocation() async {
//    try {
//      var userLocation = await location.getLocation();
//      _currentLocation = userLocation;
//    } on Exception catch (e) {
//      print('Could not get location: ${e.toString()}');
//    }
//    return _currentLocation;
//  }

  final StreamController<LocationData> _locationController = StreamController<LocationData>.broadcast();

  Stream<LocationData> get locationStream => _locationController.stream.asBroadcastStream();

  LocationService() {
    // Request permission to use location
    _location.requestPermission().then((granted) {
      if (granted != null) {
        // If granted listen to the onLocationChanged stream and emit over our controller
        _location.onLocationChanged.asBroadcastStream().listen((locationData) {
          if (locationData != null) {
//            print("SAW: speed = ${locationData.speed} mps, lat = ${locationData.latitude}, lon = ${locationData.longitude}");
            _locationController.add(locationData);
          }
        });
      }
    });
  }
}
