import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/TopsearchBar.dart';
import 'package:flutter_app/Screen/bottomBar.dart';
import 'package:flutter_app/Screen/suggestionBox.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:flutter_app/widgets/diseasepageAppbar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerclass(),
      child: MaterialApp(
        home: Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              DiseasepageAppbar(
                iconn: Icons.menu,
              ),
              //a drawer can be implemented in the appBar providing userdetails History settings Logout
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
