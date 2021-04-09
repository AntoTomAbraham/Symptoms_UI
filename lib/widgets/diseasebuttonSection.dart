import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/widgets/raisedIcon.dart';

class diseasebuttonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          raisedIcon(
            text: "Previous",
            funn: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            iconn: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            colour: Colors.grey[350],
          ),
          raisedIcon(
            text: "Update",
            colour: Colors.green[400],
          ),
        ],
      ),
    );
  }
}
