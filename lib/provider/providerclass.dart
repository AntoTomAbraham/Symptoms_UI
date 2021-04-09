import 'package:flutter/material.dart';

class Providerclass with ChangeNotifier {
  int sugg1 = 0;
  int sugg2 = 0;
  void changeSugg1() {
    sugg1 = 1;
    print("sugg1");
    notifyListeners();
  }

  void changeSugg2() {
    sugg2 = 1;
    print("sugg2");
    notifyListeners();
  }

  void changebackSugg1() {
    sugg1 = 0;
    print("sugg1");
    notifyListeners();
  }

  void changebackSugg2() {
    sugg2 = 0;
    print("sugg1");
    notifyListeners();
  }
}
