import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/ui/trip_summary_page/main.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
              // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'This is a location-based hiking data analysis '
                                'application. This application tracks your location '
                                'and calculates your distance travelled, time '
                                'elapsed, average/min/max speed, cumulative elevation '
                                'gain/loss, max/min elevation, and shows a plot of your '
                                'elevation and speed over time. All trips are saved, '
                                'and the metrics from previous trips can be viewed.',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () { launch('https://sites.google.com/view/hikelytics/privacy-policy');
                            },
                        ),
                      ],
                    ),
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

