/*
 * Copyright (c) 2020 Virginia Tech Transportation Institute. All rights reserved.
 */

import 'package:flutter/cupertino.dart';
import 'package:hiking_app/location_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'hiker_service.dart';

List<SingleChildWidget> globalProviders() {
  return [
    Provider(create: _locationServiceCreator, lazy: false),
    ProxyProvider<LocationService, HikerService>(update: _hikerServiceCreator, lazy: false),
  ];
}

LocationService _locationServiceCreator(BuildContext context) => LocationService();

HikerService _hikerServiceCreator(_, LocationService locationService, __) => HikerService(locationService: locationService);
