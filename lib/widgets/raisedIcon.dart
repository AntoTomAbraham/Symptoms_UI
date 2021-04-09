import 'package:flutter/material.dart';

class raisedIcon extends StatelessWidget {
  String text;
  Icon iconn;
  Color colour;
  void Function() funn;
  raisedIcon({@required this.text, this.iconn, this.colour, this.funn});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: funn != null
          ? funn
          : () {
              print("function");
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
