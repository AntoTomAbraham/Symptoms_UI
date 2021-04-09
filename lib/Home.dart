import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/TopsearchBar.dart';
import 'package:flutter_app/Screen/bottomBar.dart';
import 'package:flutter_app/Screen/suggestionBox.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerclass(),
      child: MaterialApp(
        home: Scaffold(
          drawer: Drawer(),
          backgroundColor: Color(0XffF2F5F8),
          appBar: AppBar(
            key: scaffoldkey,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Color(0XffF2F5F8),
            titleSpacing: 100.0,
            title: Center(
              child: Text(
                "Symptoms",
                style: TextStyle(
                  color: Color(0xff08233D),
                ),
              ),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              TopsearchBar(),
              SuggestionBox(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
