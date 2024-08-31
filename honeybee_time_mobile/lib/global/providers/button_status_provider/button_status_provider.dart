import 'package:flutter/material.dart';

class ButtonStatusProvider extends ChangeNotifier {
  bool _isButtonEnable = false;

  void updateButtonStatus(bool status) {
    _isButtonEnable = status;
    notifyListeners();
    print("Button Status Provider");
  }

  bool get buttonStatus => _isButtonEnable;
}
