import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/hiking_service.dart';
import 'package:hiking_app/models/location_accuracy_type.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:hiking_app/providers.dart';
import 'package:provider/provider.dart';

import 'models/hike_metrics.dart';
import 'models/plot_values.dart';

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
  String dropdownValue = "live";
  bool isStartButtonEnabled = true;
  bool isDropdownEnabled = true;

  @override
  Widget build(BuildContext context) {
    _hikingService = Provider.of<HikingService>(context);
    const dateTextStyle = TextStyle(fontSize: 10, color: Colors.purple, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Hello, hiker!'),
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
            StreamBuilder<List<String>>(
                stream: _hikingService.archiveService.currentArchiveList,
                builder: (context, snapshot) {
                  return DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: !isDropdownEnabled
                        ? null
                        : (String newValue) {
                            print(newValue);
                            if (newValue == "live") {
                              setState(() {
                                isStartButtonEnabled = true;
                              });
                            } else {
                              setState(() {
                                isStartButtonEnabled = false;
                              });
                            }
                            _hikingService.archiveService.activateArchive(newValue);
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                    items: snapshot.data?.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    })?.toList(),
                  );
                }),
            StreamBuilder<HikeMetrics>(
                stream: _hikingService.currentHikerMetrics$,
                builder: (context, AsyncSnapshot<HikeMetrics> snapshot) {
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
                      minWidth: 170.0,
                      height: 70.0,
                      buttonColor: Colors.white38,
                      child: RaisedButton(
                          color: isStartButtonEnabled ? Colors.green : Colors.red,
                          onPressed: !isStartButtonEnabled
                              ? null
                              : () {
                                  print("Button Pressed");
                                  if (activeStatus) {
                                    setState(() {
                                      isDropdownEnabled = true;
                                    });
                                  } else {
                                    setState(() {
                                      isDropdownEnabled = false;
                                    });
                                  }
                                  onEnableBtnClicked(context, _hikingService);
                                },
                          child: Text(_enableBtnName(activeStatus), style: const TextStyle(color: Colors.black, fontSize: 24))));
                }),
            StreamBuilder<PlotValues>(
                stream: _hikingService.elevationPlot,
                builder: (context, snapshot) {
                  final plotValues = snapshot.data ?? PlotValues();
                  return SizedBox(
                    width: plotValues.width,
                    height: plotValues.height,
                    child: LineChart(
                      LineChartData(
                        lineTouchData: LineTouchData(enabled: false),
                        lineBarsData: [
                          LineChartBarData(
                            spots: plotValues.values.map((it) => FlSpot(it[0], it[1])).toList(),
                            // isCurved: true,
                            barWidth: 3,
                            colors: [
                              Colors.purpleAccent,
                            ],
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                        minX: plotValues.xFormat.min,
                        maxX: plotValues.xFormat.max,
                        minY: plotValues.yFormat.min,
                        maxY: plotValues.yFormat.max,
                        // minY: 0,
                        titlesData: FlTitlesData(
                          bottomTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 14,
                            // getTextStyles: plotValues.xFormat.axisTextStyleFunc,
                            interval: plotValues.xFormat.interval,
                            getTitles: (value) {
                              final int minutes = (value / secPerMin).round() % minPerHour;
                              final int hours = ((value / secPerMin) / minPerHour).floor();
                              return "$hours:$minutes";
                            },
                            // (value) {
                            // final int minutes = (value / secPerMin).round() % minPerHour;
                            // final int hours = ((value / secPerMin) / minPerHour).floor();
                            // return "$hours:$minutes";
                            // }
                          ),
                          leftTitles: SideTitles(
                            showTitles: true,
                            // getTextStyles: plotValues.yFormat.axisTextStyleFunc,
                            interval: plotValues.yFormat.interval,
                            // getTitles: plotValues.yFormat.axisFormatFunc,
                            // getTitles: (value) {
                            //   return value.toString();
                            // },
                          ),
                        ),
                        axisTitleData: FlAxisTitleData(
                          bottomTitle: AxisTitle(
                              showTitle: true,
                              margin: 0,
                              titleText: plotValues.xFormat.axisTitle,
                              // textStyle: plotValues.xFormat.axisTextStyle,
                              textAlign: TextAlign.right),
                          leftTitle: AxisTitle(
                              showTitle: true,
                              titleText: plotValues.yFormat.axisTitle,
                              // textStyle: plotValues.yFormat.axisTextStyle,
                              margin: 4),
                        ),
                        gridData: FlGridData(
                          show: true,
                          checkToShowHorizontalLine: (double value) {
                            return value == 1 || value == 6 || value == 4 || value == 5;
                          },
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  void onEnableBtnClicked(BuildContext context, HikingService hikingService) {
    _hikingService.toggleStatus(context, hikingService);
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

  String _toCurrentAltitude(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final alt = metersToFeet(hikeMetrics.altitude).round();
    print("altitude: $alt");
    return "altitude: $alt ft, ${hikeMetrics.altitude.round()} m";
  }

  String _toCurrentLatLon(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    final lat = hikeMetrics.latitude;
    final lon = hikeMetrics.longitude;
    return "position: ${lat.toStringAsFixed(7)}, ${lon.toStringAsFixed(7)}";
  }

  String _toCurrentAccuracy(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    String accuracy = "unknown";
    if (hikeMetrics.locationAccuracy == LocationAccuracyType.low) {
      accuracy = "low (> 25m)";
    } else if (hikeMetrics.locationAccuracy == LocationAccuracyType.medium) {
      accuracy = "medium (> 8m)";
    } else {
      accuracy = "high (< 8m)";
    }
    return "accuracy: $accuracy";
  }

  String _toSpeedMetersPerSec(HikeMetrics hikeMetrics) {
    if (hikeMetrics == null) return "stuff";
    int speed = 0;
    if (hikeMetrics.speedMetersPerSec > 0.05) {
      speed = (1 / (hikeMetrics.speedMetersPerSec * metersPerSecToMilesPerMin)).round();
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
