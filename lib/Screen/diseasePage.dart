import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Screen/bottomBar.dart';
import 'package:flutter_app/widgets/diseasebuttonSection.dart';
import 'package:flutter_app/widgets/diseasecomments.dart';
import 'package:flutter_app/widgets/diseasepageAppbar.dart';
import 'package:flutter_app/widgets/diseasepagetextfield.dart';
import 'package:flutter_app/widgets/radioSection.dart';
import 'package:flutter_app/widgets/raisedIcon.dart';

class DiseasePage extends StatelessWidget {
  List data;
  List dataA;
  bool a;
  bool b;
  DiseasePage({
    this.data,
    this.dataA,
    this.a,
    this.b,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        DiseasepageAppbar(),
        radioSection(
          val: a,
          data1: data[0],
          data2: data[1],
          data3: data[2],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: diseasecomments()),
        ),
        dataA == null
            ? diseasebuttonSection()
            : diseasebuttonSection(
                d2: dataA,
              ),
        BottomBar(),
      ]),
    );
  }
}
