import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/diseasepagetextfield.dart';

class diseasecomments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Any medication / comments",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff08233D),
                ),
              ),
            ),
          ),
        ),
        diseasepagetextfield() //textfield can be some more bigger
      ],
    );
  }
}
