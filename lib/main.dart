import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiking_app/location_service.dart';
import 'package:hiking_app/providers.dart';
import 'package:hiking_app/ui/trip_summary_page/main.dart';
import 'package:provider/provider.dart';

import 'hiking_service.dart';

void main() {
  runApp(MultiProvider(providers: globalProviders(), child: MyApp()));
}


// HikingService hikingService;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("INITIALIZING HIKING SERVICE");
    // hikingService = HikingService(locationService: LocationService()); //Provider.of<HikingService>(context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TripSummaryPage(),
    );
  }
}