import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
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
    const cutOffYValue = 2000.0;
    const dateTextStyle = TextStyle(fontSize: 10, color: Colors.purple, fontWeight: FontWeight.bold);

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

          children: <Widget>[StreamBuilder<LocationStatus>(
              stream: _hikingService.currentLocation$,
              builder: (context, snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _toCurrentAltitude(snapshot?.data),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      _toCurrentLatLon(snapshot?.data),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      _toSpeedMetersPerSec(snapshot?.data),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      _toCurrentAccuracy(snapshot?.data),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                );
              }),
            StreamBuilder<HikeMetrics>(
                stream: _hikingService.currentHikerMetrics$,
                builder: (context, AsyncSnapshot<HikeMetrics> snapshot) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.all(16.0)),
                      Text(
                        _toTimeElapsedString(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toDistanceTraveledString(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toElevationChangeString(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toCumulativeClimbMeters(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toCumulativeDescentMeters(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toAltitudeMin(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toAltitudeMax(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toAverageSpeedMetersPerSec(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toSpeedMax(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        _toNetHeading(snapshot?.data),
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  );
                }),
            StreamBuilder<bool>(
                stream: _hikingService.currentHikerStatus$,
                builder: (context, AsyncSnapshot<bool> snapshot) {
                  final bool activeStatus = snapshot?.data ?? false;
                  return ButtonTheme(
                      minWidth: 200.0,
                      height: 100.0,
                      buttonColor: Colors.white38,
                      child: RaisedButton(
                          onPressed: () => onEnableBtnClicked(),
                          child: Text(_enableBtnName(activeStatus), style: const TextStyle(color: Colors.black, fontSize: 24))));
                }),
        StreamBuilder<List<FlSpot>>(
          stream: _hikingService.elevationList,
          builder: (context, snapshot) {
            return SizedBox(
              width: 300,
              height: 140,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(enabled: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: snapshot.data,
                      // [
                      //   FlSpot(0, 2000),
                      //   FlSpot(1, 3.5),
                      //   FlSpot(2, 4.5),
                      //   FlSpot(3, 1),
                      //   FlSpot(4, 4),
                      //   FlSpot(5, 6),
                      //   FlSpot(6, 6.5),
                      //   FlSpot(7, 6),
                      //   FlSpot(8, 4),
                      //   FlSpot(9, 6),
                      //   FlSpot(10, 6),
                      //   FlSpot(11000000, 7),
                      // ],
                      // isCurved: true,
                      barWidth: 4,
                      colors: [
                        Colors.purpleAccent,
                      ],
                      dotData: FlDotData(
                        show: false,
                      ),
                    ),
                  ],
                  minY: 1450,
                  maxY: 1550,
                  // minY: 0,
                  titlesData: FlTitlesData(
                    bottomTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 14,
                        getTextStyles: (value) => dateTextStyle,
                        interval: 60,
                        // getTitles: (value) {
                        //   return value.toString();
                        //   // return DateTime.fromMillisecondsSinceEpoch((value*1000).toInt()).toString();
                        //   switch (value.toInt()) {
                        //     case 0:
                        //       return 'Jan';
                        //     case 1:
                        //       return 'Feb';
                        //     case 2:
                        //       return 'Mar';
                        //     case 3:
                        //       return 'Apr';
                        //     case 4:
                        //       return 'May';
                        //     case 5:
                        //       return 'Jun';
                        //     case 6:
                        //       return 'Jul';
                        //     case 7:
                        //       return 'Aug';
                        //     case 8:
                        //       return 'Sep';
                        //     case 9:
                        //       return 'Oct';
                        //     case 10:
                        //       return 'Nov';
                        //     case 11:
                        //       return 'Dec';
                        //     default:
                        //       return '';
                        //   }
                        // }
                        ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      interval: 100,
                      // getTitles: (value) {
                      //   return value.toString();
                      // },
                    ),
                  ),
                  axisTitleData: FlAxisTitleData(
                      leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 4),
                      bottomTitle: AxisTitle(
                          showTitle: true,
                          margin: 0,
                          titleText: '2019',
                          textStyle: dateTextStyle,
                          textAlign: TextAlign.right)),
                  gridData: FlGridData(
                    show: true,
                    checkToShowHorizontalLine: (double value) {
                      return value == 1 || value == 6 || value == 4 || value == 5;
                    },
                  ),
                ),
              ),
            );
          }
        ),
            // FlatButton(
            //   onPressed: onEnableBtnClicked,
            //   child: const Text('hey :P'),
            // ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }

  void onEnableBtnClicked() {
    _hikingService.toggleStatus();
    print("HIKER: onEnableBtnClicked");
  }

  String _enableBtnName(bool activeStatus) {
    if (activeStatus) {
      return "STOP";
    } else {
      return "START";
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
    final miles = metersToFeet(hikeMetrics.distanceTraveled) / feetPerMile;
    return "distance traveled: ${miles.toStringAsFixed(2)} mi";
  }

  String _toElevationChangeString(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";

    final feet = metersToFeet(hikeMetrics.netElevationChange).round();
    return "elevation change: $feet ft";
  }

  String _toTimeElapsedString(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final int minutes = (hikeMetrics.metricPeriodSeconds / secPerMin).round() % minPerHour;
    final int hours = ((hikeMetrics.metricPeriodSeconds / secPerMin) / minPerHour).floor();
    return "time Elapsed: ${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}";
  }

  String _toCurrentAltitude(LocationStatus locationStatus) {
    if (locationStatus == null) return "stuff";
    final alt = metersToFeet(locationStatus.altitude).round();
    return "altitude: $alt ft, ${locationStatus.altitude.round()} m";
  }

  String _toCurrentLatLon(LocationStatus locationStatus) {
    if (locationStatus == null) return "stuff";
    final lat = locationStatus.latitude;
    final lon = locationStatus.longitude;
    return "position: ${lat.toStringAsFixed(7)}, ${lon.toStringAsFixed(7)}";
  }

  String _toCurrentAccuracy(LocationStatus locationStatus) {
    if (locationStatus == null) return "stuff";
    String accuracy = "unknown";
    if (locationStatus.accuracy == LocationAccuracyType.low) {
      accuracy = "low (> 25m)";
    } else if (locationStatus.accuracy == LocationAccuracyType.medium) {
      accuracy = "medium (> 8m)";
    } else {
      accuracy = "high (< 8m)";
    }
    return "accuracy: $accuracy";
  }

  String _toSpeedMetersPerSec(LocationStatus locationStatus) {
    if (locationStatus == null) return "stuff";
    int speed = 0;
    if (locationStatus.speedMetersPerSec > 0.05) {
      speed = (1 / (locationStatus.speedMetersPerSec * metersPerSecToMilesPerMin)).round();
    }
    return "speed: $speed min/mile";
  }

  String _toCumulativeClimbMeters(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final metric = hikeMetrics.cumulativeClimbMeters.round();
    return "cumulative ascent: $metric ft";
  }

  String _toCumulativeDescentMeters(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final metric = hikeMetrics.cumulativeDescentMeters.round();
    return "cumulative descent: $metric ft";
  }

  String _toAverageSpeedMetersPerSec(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    int speed = 0;
    if (hikeMetrics.averageSpeedMetersPerSec > 0.01) {
      speed = (1 / (hikeMetrics.averageSpeedMetersPerSec * metersPerSecToMilesPerMin)).round();
    }
    return "average speed: $speed min/mile";
  }

  String _toSpeedMax(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    int speed = 0;
    if (hikeMetrics.speedMax > 0.05) {
      speed = (1 / (hikeMetrics.speedMax * metersPerSecToMilesPerMin)).round();
    }
    return "max speed: $speed min/mile";
  }

  String _toAltitudeMin(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final altMin = metersToFeet(hikeMetrics.altitudeMin).round();
    return "min altitude: $altMin ft";
  }

  String _toAltitudeMax(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final altMax = metersToFeet(hikeMetrics.altitudeMax).round();
    return "max altitude: $altMax ft";
  }

  String _toNetHeading(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final heading = hikeMetrics.netHeadingDegrees.round();
    return "net heading: $heading deg";
  }
}

const double feetPerMeter = 3.28084;
const double metersPerSecToMilesPerMin = 0.0372823;
const feetPerMile = 5280;

const int minPerHour = 60;
const int secPerMin = 60;

double metersToFeet(double distance) {
  return distance * feetPerMeter;
}
