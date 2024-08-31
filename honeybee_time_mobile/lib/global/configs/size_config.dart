import 'package:flutter/widgets.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double fem;
  static late double ffem;

  static const double _referenceWidth = 360;
  static const double _referenceHeight = 660;

  void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    fem = screenWidth / _referenceWidth;
    ffem = screenHeight / _referenceHeight;
  }
}
