import 'package:flutter/material.dart';

class RouteProvider  with ChangeNotifier{
    int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  void setCurrentIndex(int currentIndex){
    _currentIndex = currentIndex;
    notifyListeners();
  }
}