import 'package:flutter/material.dart';

class diseasepagetextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      //style: TextStyle(height: 60),
      decoration: InputDecoration(
        hintText: "Comments",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: 2,
          ),
        ),
      ),
    );
  }
}
