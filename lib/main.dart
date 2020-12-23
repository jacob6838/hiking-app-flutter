import 'package:flutter/material.dart';
import 'package:hiking_app/hiker_service.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:hiking_app/providers.dart';
import 'package:provider/provider.dart';

import 'models/hiker_status.dart';

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
  HikerService _hikerService;

  @override
  Widget build(BuildContext context) {
    _hikerService = Provider.of<HikerService>(context);

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
            StreamBuilder<bool>(
                stream: _hikerService.hikerStatus$,
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
    _hikerService.toggleStatus();
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
        "accuracy: ${locationStatus.hdop} m";
  }

  String _toDistanceTraveledString(HikerStatus hikerStatus) {
    if (hikerStatus == null) return "stuff";

    return "Distance traveled: ${hikerStatus.distanceTraveledTotal} m";
  }

  String _toElevationChangeString(HikerStatus hikerStatus) {
    if (hikerStatus == null) return "stuff";

    return "Elevation change: ${hikerStatus.positiveElevationGainTotal} m";
  }

  String _toTimeElapsedString(HikerStatus hikerStatus) {
    if (hikerStatus == null) return "stuff";

    return "time Elapsed: ${hikerStatus.timeElapsedTotalSec} s";
  }
}

const double feetPerMeter = 3.28084;

double metersToFeet(double distance) {
  return distance * feetPerMeter;
}
