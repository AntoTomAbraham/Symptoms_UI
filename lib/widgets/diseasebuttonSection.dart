import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Screen/diseasePage.dart';
import 'package:flutter_app/model/response_mode.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:flutter_app/widgets/raisedIcon.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class diseasebuttonSection extends StatefulWidget {
  List d2;
  diseasebuttonSection({this.d2});

  @override
  _diseasebuttonSectionState createState() => _diseasebuttonSectionState();
}

class _diseasebuttonSectionState extends State<diseasebuttonSection> {
  Dio dio = new Dio();
  Future postData() async {
    final String pathUrl = "https://localhost:8080";
    dynamic data = {
      "userId": "1234",
      "data": Provider.of<Providerclass>(context, listen: false).getresponse()
    };

    var response = await dio.post(pathUrl,
        data: data,
        options: Options(headers: {
          'Content-type': 'application/json;charset=UTF-8',
        }));
    return response;
  }

  @override
  Widget build(BuildContext context) {
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
          widget.d2 == null
              ? raisedIcon(
                  text: "Update",
                  colour: Colors.green[400],
                  funn: () async {
                    await postData().then((value) => print(value));
                  },
                )
              : raisedIcon(
                  text: "Next",
                  colour: Colors.green[400],
                  funn: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DiseasePage(
                              data: widget.d2,
                              a: false,
                            )));
                  },
                ),
        ],
      ),
    );
  }
}
