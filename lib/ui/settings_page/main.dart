import 'package:flutter/material.dart';
import 'package:hiking_app/models/units.dart';
import 'package:hiking_app/ui/settings_page/radio_group.dart';
import 'package:hiking_app/ui/trip_summary_page/main.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  MainUnits _unit = MainUnits.imperial;
  SpeedUnitsImperial _speedUnit = SpeedUnitsImperial.mph;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Hello, Hiker!'),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Trips'}.map((String choice) {
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
                children: const <Widget>[
                  RadioGroup(group: [MainUnits.metric, MainUnits.imperial], title: "Main Units"),
                  Divider(
                      color: Colors.black,
                    thickness: 2,
                  ),
                  RadioGroup(group: SpeedUnitsImperial.values, title: "Speed Units"),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                ]
            )
        )
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Trips':
        Navigator.pop(context);
        break;
    }
  }
}

