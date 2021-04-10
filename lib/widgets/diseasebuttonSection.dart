import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Screen/diseasePage.dart';
import 'package:flutter_app/model/response_mode.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:flutter_app/widgets/raisedIcon.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';

class diseasebuttonSection extends StatelessWidget {
  List d2;
  diseasebuttonSection({this.d2});

  @override
  Widget build(BuildContext context) {
    String url = "https://localhost:8080";
    Future<String> makeRequest() async {
      var response = http.post(Uri.encodeFull(url));
    }

    return Container(
      height: 112,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          raisedIcon(
            text: "Previous",
            funn: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            iconn: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            colour: Colors.grey[350],
          ),
          d2 == null
              ? raisedIcon(
                  text: "Update",
                  colour: Colors.green[400],
                )
              : raisedIcon(
                  text: "Next",
                  colour: Colors.green[400],
                  funn: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DiseasePage(
                              data: d2,
                              a: false,
                            )));
                  },
                ),
        ],
      ),
    );
  }
}
