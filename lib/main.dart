import 'package:flutter/material.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:hiking_app/providers.dart';
import 'package:provider/provider.dart';

import 'models/hike_metrics.dart';

void main() {
  runApp(MultiProvider(providers: globalProviders(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  HikingService _hikingService;

  @override
  Widget build(BuildContext context) {
    _hikingService = Provider.of<HikingService>(context);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Hello, hiker'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            StreamBuilder<HikeMetrics>(
                stream: _hikingService.currentHikerMetrics$,
                builder: (context, AsyncSnapshot<HikeMetrics> snapshot) {
                  return Column(
                    children: [
                      Text(
                        _toDistanceTraveledString(snapshot?.data),
                        style: TextStyle(color: Colors.orange, fontSize: 30),
                      ),
                      Text(
                        _toElevationChangeString(snapshot?.data),
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        _toTimeElapsedString(snapshot?.data),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  );
                }),
            StreamBuilder<bool>(
                stream: _hikingService.currentHikerStatus$,
                builder: (context, AsyncSnapshot<bool> snapshot) {
                  final bool activeStatus = snapshot?.data ?? false;
                  return RaisedButton(onPressed: () => onEnableBtnClicked(), child: Text(_enableBtnName(activeStatus)));
                }),
            FlatButton(
              onPressed: onEnableBtnClicked,
              child: const Text('BEGIN HIKE'),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }

  void onEnableBtnClicked() {
    _hikingService.toggleStatus();
  }

  String _enableBtnName(bool activeStatus) {
    if (activeStatus) {
      return "Stop";
    } else {
      return "Start";
    }
  }

  String _toLocationStatusString(LocationStatus locationStatus) {
    if (locationStatus == null) return "Invalid Location";
    return "${locationStatus.latitude}, ${locationStatus.longitude}\n"
        "${locationStatus.altitude} m, ${metersToFeet(locationStatus.altitude)} ft\n"
        "accuracy: ${locationStatus.accuracy} m";
  }

  String _toDistanceTraveledString(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";

    return "Distance traveled: ${hikeMetrics.distanceTraveled} m";
  }

  String _toElevationChangeString(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";

    return "Elevation change: ${hikeMetrics.netElevationChange} m";
  }

  String _toTimeElapsedString(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";

    return "time Elapsed: ${hikeMetrics.metricPeriodSeconds.round()} seconds";
  }
}

const double feetPerMeter = 3.28084;

double metersToFeet(double distance) {
  return distance * feetPerMeter;
}
