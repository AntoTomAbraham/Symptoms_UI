import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';

class diseasepageAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back),
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
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff08233D),
            ),
          ),
        )
      ],
    );
  }
}
