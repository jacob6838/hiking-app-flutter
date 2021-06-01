import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/active_trip_page/main.dart';
import 'package:hiking_app/active_trip_page/metric_plot.dart';
import 'package:hiking_app/active_trip_page/metrics_table.dart';
import 'package:hiking_app/models/plot_values.dart';
import 'package:provider/provider.dart';

import '../hiking_service.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = widget.tripName;
  }

  @override
  Widget build(BuildContext context) {
    _hikingService = Provider.of<HikingService>(context);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Hello, Hiker!'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'New Trip', 'Settings'}.map((String choice) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
                      dropdownValue = dropdownValue ?? snapshot.data?.first;
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
                          print(newValue);
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
                            _hikingService.archiveService.deleteArchive(dropdownValue);
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:  () {
          Navigator.pushReplacement(
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

  void handleClick(String value) {
    switch (value) {
      case 'New Trip':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ActiveTripPage()),
        );
        break;
      case 'Settings':
        break;
    }
  }

  void onEnableBtnClicked(BuildContext context, HikingService hikingService) {
    _hikingService.toggleStatus(context, hikingService);
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