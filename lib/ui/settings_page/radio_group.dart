import 'package:flutter/material.dart';
import 'package:hiking_app/models/units.dart';

class RadioGroup extends StatefulWidget {
  const RadioGroup({Key key, this.group, this.title}) : super(key: key);

  final group;
  final String title;

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

// Text("Main Units", style: TextStyle(fontSize: 25)),

class _RadioGroupState extends State<RadioGroup> {
  var _group;
  @override
  void initState() {
    // print(widget.group);
    // print(MainUnits);
    _group = widget.group[0];
    // _group = MainUnits;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> widgets = [];
    if (widget.title != null) {
      widgets.add(Text(widget.title, style: const TextStyle(fontSize: 25)));
    }

    print(returnName(MainUnits.metric));
    //widget.group
    print("PRINTING ENUM VALUES");
    print(widget.group);
    for (final i in widget.group) {
      widgets.add(ListTile(
        title: Text(i.name as String),
        leading: Radio<dynamic>(
          value: i,
          groupValue: _group,
          onChanged: (dynamic value) {
            setState(() {
              _group = value;
            });
          },
        ),
      ));
    }

    return Column(
      children: widgets,
    );
  }

  String returnName(dynamic val) {
    return val.name as String;
  }


}
