import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/diseasePage.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:flutter_app/widgets/suggestionContainer.dart';
import 'package:provider/provider.dart';

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
                GestureDetector(
                  onTap: () {
                    Provider.of<Providerclass>(context, listen: false)
                        .changeSugg1();
                  },
                  onDoubleTap: () {
                    Provider.of<Providerclass>(context, listen: false)
                        .changebackSugg1();
                  },
                  child: suggestionContainer(
                    disease: "Fatique",
                    imageaddress:
                        "https://www.pyroenergen.com/articles09/images/fatigue.gif",
                  ),
                ),
                //a Boxshadow with elevation can be implemented around container
                GestureDetector(
                  onTap: () {
                    Provider.of<Providerclass>(context, listen: false)
                        .changeSugg2();
                  },
                  onDoubleTap: () {
                    Provider.of<Providerclass>(context, listen: false)
                        .changebackSugg2();
                  },
                  child: suggestionContainer(
                    disease: "Vomiting",
                    imageaddress:
                        "https://tse1.mm.bing.net/th?id=OIP.p_V4yyA8gsCcjKh48C-8dAHaH9&pid=Api&P=0&w=300&h=300",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
