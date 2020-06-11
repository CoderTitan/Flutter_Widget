
import 'package:flutter/material.dart';

class CountViewModel extends ChangeNotifier {
  int _counter = 10;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }
}