import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/widgets/diseasepageAppbar.dart';

class DiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        diseasepageAppbar(),
      ]),
    );
  }
}
