import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottomIcon.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          bottomIcon(icon: Icons.home, text: "Home"),
          bottomIcon(icon: Icons.perm_device_information, text: "Symptoms"),
          bottomIcon(icon: Icons.local_hospital, text: "Medication"),
          bottomIcon(icon: Icons.gradient, text: "Reports"),
        ],
      ),
    );
  }
}
