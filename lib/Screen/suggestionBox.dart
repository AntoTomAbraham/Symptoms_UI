import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/suggestionContainer.dart';

class SuggestionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Suggested Symptoms",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff08233D),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                suggestionContainer(
                  disease: "Fatique",
                  imageaddress:
                      "https://www.pyroenergen.com/articles09/images/fatigue.gif",
                ),
                suggestionContainer(
                  disease: "Vomiting",
                  imageaddress:
                      "https://tse1.mm.bing.net/th?id=OIP.p_V4yyA8gsCcjKh48C-8dAHaH9&pid=Api&P=0&w=300&h=300",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
