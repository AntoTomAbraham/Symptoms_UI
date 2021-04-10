import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Screen/diseasePage.dart';

class bottomIcon extends StatelessWidget {
  IconData icon;
  String text;
  Color home;
  Void Function() funn;
  bottomIcon({
    @required this.icon,
    @required this.text,
    this.home,
    this.funn,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: funn == null ? null : funn,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: home == null ? Color(0xff08233D) : home,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff08233D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
