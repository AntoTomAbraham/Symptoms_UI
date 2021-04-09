import 'package:flutter/material.dart';

class TopsearchBar extends StatefulWidget {
  @override
  _TopsearchBarState createState() => _TopsearchBarState();
}

class _TopsearchBarState extends State<TopsearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Search & add your symptoms",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08233D),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: " 🔍 Search Symptoms ",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                suffix: Container(
                  height: 30,
                  child: RaisedButton(
                    onPressed: () {
                      print("haeeeo");
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.pink),
                    ),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
