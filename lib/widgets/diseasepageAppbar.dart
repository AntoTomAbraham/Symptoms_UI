import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';

class DiseasepageAppbar extends StatelessWidget {
  IconData iconn;
  DiseasepageAppbar({this.iconn});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(iconn == null ? Icons.arrow_back : iconn),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        SizedBox(width: 100),
        Center(
          child: Text(
            "Symptoms",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xff08233D),
            ),
          ),
        )
      ],
    );
  }
}
