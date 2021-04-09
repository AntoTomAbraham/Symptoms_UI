import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/diseasePage.dart';

class bottomIcon extends StatelessWidget {
  IconData icon;
  String text;
  bottomIcon({@required this.icon, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DiseasePage(),
            ),
          );
        },
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: Color(0xff08233D),
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff08233D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
