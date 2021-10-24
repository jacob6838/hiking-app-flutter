import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hiking_app/ui/about_page/main.dart';
import 'package:hiking_app/ui/active_trip_page/main.dart';
import 'package:hiking_app/ui/active_trip_page/metric_plot.dart';
import 'package:hiking_app/ui/active_trip_page/metrics_table.dart';
import 'package:hiking_app/models/location_status.dart';
import 'package:hiking_app/models/plot_values.dart';
import 'package:hiking_app/ui/management_page/main.dart';
import 'package:hiking_app/ui/settings_page/main.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

import '../../hiking_service.dart';
import '../../main.dart';

class TripSummaryPage extends StatefulWidget {
  const TripSummaryPage({Key key, this.tripName}) : super(key: key);

  final String tripName;

  @override
  TripSummaryPageState createState() => TripSummaryPageState();
}

class TripSummaryPageState extends State<TripSummaryPage> {
  HikingService _hikingService;
  String dropdownValue;
  bool isStartButtonEnabled = true;
  bool isDropdownEnabled = true;
  GoogleMapController mapController;

  Completer<GoogleMapController> _controller = Completer();

  String _prevDropdownValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = widget.tripName;
  }

  @override
  Widget build(BuildContext context) {
    _hikingService = Provider.of<HikingService>(context);
    _hikingService.archiveService.currentArchiveList.listen((archiveList) async {
      if (_prevDropdownValue == null && archiveList.isNotEmpty) {
        print("ARCHIVE LIST: $archiveList");
        _prevDropdownValue = archiveList.first;
        await _hikingService.archiveService.activateArchive(_prevDropdownValue);
        setState(() {
          dropdownValue = _prevDropdownValue;
        });
      }
    });

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Hello, Hiker!'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'About', 'Settings', 'Manage Trips'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            Row(
              children: <Widget> [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 4,
                  child:StreamBuilder<List<String>>(
                    stream: _hikingService.archiveService.currentArchiveList,
                    builder: (context, snapshot) {
                      final dropDownValues = snapshot.data;
                      return DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        // iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          _hikingService.archiveService.activateArchive(newValue);
                          print("Setting archive to: $newValue");
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: dropDownValues?.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })?.toList(),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                          confirmDeletionPopup(context, "Are you sure you want to delete trip $dropdownValue?", () async {
                            await _hikingService.archiveService.deleteArchive(dropdownValue);
                            setState(() {
                              dropdownValue = _hikingService.archiveService.currentArchiveList.value.first;
                            });
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
            StreamBuilder<List<LocationStatus>>(
                stream: _hikingService.currentPathSub,
                builder: (context, snapshot) {
                  List<LatLng> pathList = snapshot.data?.map(locationStatusToLatLong)?.toList() ?? [];
                  print("$mapController, ${pathList?.length}");
                  if (pathList != []) {
                    final pair = getPathBounds(pathList);
                    if (pair != null) {
                      final LatLngBounds bounds = LatLngBounds(northeast: pair.first, southwest: pair.second);
                      if (mapController != null) {
                        mapController.animateCamera(CameraUpdate.newLatLngBounds(bounds, 20));
                      }
                    }
                  }

                  return Container(
                    height: 300,
                    child: GoogleMap(
                      polylines: {
                        Polyline(
                            polylineId: const PolylineId("path"),
                            // points: [
                            //   LatLng(40.275266, -74.7244817),
                            //   LatLng(40.2753119, -74.7242424),
                            // ]
                            points: pathList
                        )
                      },
                      onMapCreated: (GoogleMapController controller) {
                        mapController = controller;
                        _controller.complete(controller);
                        print("$mapController, ${pathList?.length}");
                        final pair = getPathBounds(pathList);
                        if (pair != null) {
                          final LatLngBounds bounds = LatLngBounds(northeast: pair.first, southwest: pair.second);
                          mapController.animateCamera(CameraUpdate.newLatLngBounds(bounds, 20));
                        }
                        // controller.animateCamera(CameraUpdate.newLatLngBounds(bounds, 0));
                      },
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(40.275266, -74.7244817), //locationStatusToLatLong(snapshot.data?.first ?? LocationStatus(latitude: 40, longitude: -74)),
                        zoom: 0,
                      ),
                      gestureRecognizers: Set()..add(Factory<EagerGestureRecognizer>(() => EagerGestureRecognizer())),
                    ),
                  );
                }
            ),
            MetricsTable(hikingService: _hikingService, metricsHiddenMap: List.filled(22, true)),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Row(
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:  () {
          _hikingService.clearData();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ActiveTripPage()),
          );
        },
        label: const Text('New Trip'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }

  LatLng locationStatusToLatLong(LocationStatus locationStatus) {
    return LatLng(locationStatus.latitude, locationStatus.longitude);
  }

  KtPair<LatLng,LatLng> getPathBounds(List<LatLng> path) {
    LatLng northeast;
    LatLng southwest;
    path.forEach((point) {
      if (northeast == null || point.latitude > northeast.latitude) {
        northeast = LatLng(point.latitude, northeast?.longitude ?? point.longitude);
      }
      if (northeast == null || point.longitude > northeast.longitude) {
        northeast = LatLng(northeast?.latitude ?? point.latitude, point.longitude);
      }

      if (southwest == null || point.latitude < southwest.latitude) {
        southwest = LatLng(point.latitude, southwest?.longitude ?? point.longitude);
      }
      if (southwest == null || point.longitude < southwest.longitude) {
        southwest = LatLng(southwest?.latitude ?? point.latitude, point.longitude);
      }
    });
    if (northeast == null || southwest == null) return null;
    return KtPair(northeast, southwest);
  }

  void handleClick(String value) {
    switch (value) {
      case 'About':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutPage()),
        );
        break;
      case 'Settings':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      case 'Manage Trips':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ManagementPage()),
        );
        break;
    }
  }

  void onEnableBtnClicked(BuildContext context, HikingService _hikingService) {
    _hikingService.toggleStatus(context, _hikingService);
  }

  Widget confirmDeletionPopup(BuildContext context, String message, Function onConfirmCallback) {
    return AlertDialog(
      title: const Text('Confirm Action'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message),
        ],
      ),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            print("cancel"); Navigator.of(context).pop();
            },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Cancel'),
        ),
        RaisedButton(
          onPressed: () {
            onConfirmCallback(); Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}