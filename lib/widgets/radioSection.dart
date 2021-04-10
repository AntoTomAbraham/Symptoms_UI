import 'package:flutter/material.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:provider/provider.dart';

class radioSection extends StatefulWidget {
  String data1;
  String data2;
  String data3;
  bool val;
  radioSection({
    Key key,
    this.val,
    @required this.data1,
    @required this.data2,
    @required this.data3,
  }) : super(key: key);
  @override
  _radioSectionState createState() => _radioSectionState(
        d1: this.data1,
        d2: this.data2,
        d3: this.data3,
        aa: this.val,
      );
}

class _radioSectionState extends State<radioSection> {
  int selectedradio;
  bool aa;
  String d1;
  String d2;
  String d3;
  List<String> info = [];
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

  List obj;
  _radioSectionState({this.d1, this.d2, this.d3, this.aa});
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
                aa == true
                    ? Provider.of<Providerclass>(context, listen: false)
                        .vomitIncre(val)
                    : Provider.of<Providerclass>(context, listen: false)
                        .fatiIncre(val);
              },
              title: Row(
                children: <Widget>[
                  Text(d1),
                ],
              ),
              //selected: true,
            ),
            RadioListTile(
              activeColor: Colors.orange,
              value: 2,
              groupValue: selectedradio,
              onChanged: (val) {
                selectradio(val);
                aa == true
                    ? Provider.of<Providerclass>(context, listen: false)
                        .vomitIncre(val)
                    : Provider.of<Providerclass>(context, listen: false)
                        .fatiIncre(val);
              },
              title: Row(
                children: <Widget>[Text(d2)],
              ),
            ),
            RadioListTile(
              activeColor: Colors.orange,
              value: 3,
              groupValue: selectedradio,
              onChanged: (val) {
                selectradio(val);
                aa == true
                    ? Provider.of<Providerclass>(context, listen: false)
                        .vomitIncre(val)
                    : Provider.of<Providerclass>(context, listen: false)
                        .fatiIncre(val);
              },
              title: Row(
                children: <Widget>[Text(d3)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
