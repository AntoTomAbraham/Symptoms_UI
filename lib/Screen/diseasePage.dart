import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/widgets/diseasebuttonSection.dart';
import 'package:flutter_app/widgets/diseasecomments.dart';
import 'package:flutter_app/widgets/diseasepageAppbar.dart';
import 'package:flutter_app/widgets/diseasepagetextfield.dart';
import 'package:flutter_app/widgets/radioSection.dart';
import 'package:flutter_app/widgets/raisedIcon.dart';

class DiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        diseasepageAppbar(),
        radioSection(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: diseasecomments()),
        ),
        diseasebuttonSection(),
      ]),
    );
  }
}
