import 'package:flutter/material.dart';

class Providerclass with ChangeNotifier {
  int sugg1 = 0;
  int sugg2 = 0;
  List fati = [0];
  List vomi = [0];

  void fatiIncre(int data) {
    fati.clear();
    fati.add(data);
    print(fati);
    notifyListeners();
  }

  Map getresponse() {
    return {
      "fatique": fati[0],
      "Vomit": vomi[0],
    };
    notifyListeners();
  }

  void vomitIncre(int data) {
    vomi.clear();
    vomi.add(data);
    print(vomi);
    notifyListeners();
  }

  void removeFati() {
    fati.clear();
    notifyListeners();
  }

  void removeVomit() {
    vomi.clear();
    notifyListeners();
  }

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
