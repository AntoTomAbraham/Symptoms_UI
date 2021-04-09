import 'package:flutter/material.dart';

class raisedIcon extends StatelessWidget {
  String text;
  Icon iconn;
  Color colour;
  raisedIcon({@required this.text, this.iconn, this.colour});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print("haeeeo");
      },
      child: Container(
        height: 70,
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              iconn != null ? iconn : Container(width: 5),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
      color: colour,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
