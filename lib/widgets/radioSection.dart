import 'package:flutter/material.dart';

class radioSection extends StatefulWidget {
  @override
  _radioSectionState createState() => _radioSectionState();
}

class _radioSectionState extends State<radioSection> {
  int selectedradio;
  @override
  void initState() {
    super.initState();
    selectedradio = 0;
  }

  selectradio(int val) {
    setState(() {
      selectedradio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: 210,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            RadioListTile(
              activeColor: Colors.orange,
              value: 1,
              groupValue: selectedradio,
              onChanged: (val) {
                selectradio(val);
              },
              title: Row(
                children: <Widget>[Text("Vomitted once during the day")],
              ),
              //selected: true,
            ),
            RadioListTile(
              activeColor: Colors.orange,
              value: 2,
              groupValue: selectedradio,
              onChanged: (val) {
                selectradio(val);
              },
              title: Row(
                children: <Widget>[Text("Vomitted 2-5 times during the day")],
              ),
            ),
            RadioListTile(
              activeColor: Colors.orange,
              value: 3,
              groupValue: selectedradio,
              onChanged: (val) {
                selectradio(val);
              },
              title: Row(
                children: <Widget>[
                  Text("Vomitted more than 6 times during the day")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
