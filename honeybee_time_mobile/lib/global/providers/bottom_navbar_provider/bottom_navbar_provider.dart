import 'package:flutter/material.dart';

class BottomNavbarProvider extends ChangeNotifier {
  int _currentIndex = 2;

  void updateCurrentIndex(int currentIndex) {
    print("hello: $currentIndex");
    _currentIndex = currentIndex;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;
}
