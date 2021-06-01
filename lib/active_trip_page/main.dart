import 'package:flutter/material.dart';
import 'package:hiking_app/models/plot_values.dart';
import 'package:hiking_app/trip_summary_page/main.dart';
import 'package:provider/provider.dart';

import '../hiking_service.dart';
import 'metric_plot.dart';
import 'metrics_table.dart';

class ActiveTripPage extends StatefulWidget {
  const ActiveTripPage({Key key}) : super(key: key);

  @override
  ActiveTripPageState createState() => ActiveTripPageState();
}

class ActiveTripPageState extends State<ActiveTripPage> {
  HikingService _hikingService;
  bool isDropdownEnabled = true;

  @override
  Widget build(BuildContext context) {
    _hikingService = Provider.of<HikingService>(context);
    const dateTextStyle = TextStyle(fontSize: 10, color: Colors.purple, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Hello, Hiker!'),
        // actions: <Widget>[
        //   PopupMenuButton<String>(
        //     onSelected: handleClick,
        //     itemBuilder: (BuildContext context) {
        //       return {'Trips', 'Settings'}.map((String choice) {
        //         return PopupMenuItem<String>(
        //           value: choice,
        //           child: Text(choice),
        //         );
        //       }).toList();
        //     },
        //   ),
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            MetricsTable(hikingService: _hikingService, metricsHiddenMap: List.filled(22, true)),
            Row(
                children: <Widget>[
                  StreamBuilder<PlotValues>(
                      stream: _hikingService.elevationPlot,
                      builder: (context, snapshot) {
                        final plotValues = snapshot.data ?? PlotValues();
                        return MetricPlot(hikingService: _hikingService, plotValues: plotValues);
                      }
                  ),
                  StreamBuilder<PlotValues>(
                      stream: _hikingService.speedPlot,
                      builder: (context, snapshot) {
                        final plotValues = snapshot.data ?? PlotValues();
                        return MetricPlot(hikingService: _hikingService, plotValues: plotValues);
                      }
                  ),
                ]
            ),
            StreamBuilder<bool>(
                stream: _hikingService.currentHikerStatus$,
                builder: (context, AsyncSnapshot<bool> snapshot) {
                  final bool activeStatus = snapshot?.data ?? false;
                  return SizedBox(
                      height: 80,
                      width: 80,
                      child: Container(
                          decoration: BoxDecoration(
                            color: !activeStatus ? Colors.green : Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: () async {
                              print("Button Pressed");
                              print(activeStatus);
                              if (activeStatus) {
                                setState(() {
                                  isDropdownEnabled = true;
                                });
                                final name = await onEnableBtnClicked(context, _hikingService);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TripSummaryPage()),
                                );
                                // tripName: name
                              } else {
                                setState(() {
                                  isDropdownEnabled = false;
                                });
                                onEnableBtnClicked(context, _hikingService);
                              }
                            },
                            child: Icon(
                              !activeStatus ? Icons.play_arrow : Icons.stop_rounded,
                              color: Colors.white,
                              size: 60,
                            ),
                          )
                      )
                  );
                }
            ),
          ],
        ),
      ),
      floatingActionButton: !isDropdownEnabled ? null : FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TripSummaryPage()),
          );
        },
        label: const Text('View Trips'),
        icon: const Icon(Icons.remove_red_eye),
        backgroundColor: Colors.pink,
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Trips':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TripSummaryPage()),
        );
        break;
      case 'Settings':
        break;
    }
  }

  Future<String> onEnableBtnClicked(BuildContext context, HikingService hikingService) async {
    return _hikingService.toggleStatus(context, hikingService);
  }

  String _enableBtnName(bool activeStatus) {
    if (activeStatus) {
      return "STOP";
    } else {
      return "START";
    }
  }
}