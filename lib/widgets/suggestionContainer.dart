import 'package:flutter/material.dart';

class suggestionContainer extends StatelessWidget {
  String imageaddress;
  String disease;
  suggestionContainer({this.imageaddress, this.disease});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      child: Column(
        children: <Widget>[
          Container(
            height: 110,
            child: Image.network(
              imageaddress,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(disease),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
