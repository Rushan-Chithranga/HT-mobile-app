// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class ColorProvider extends ChangeNotifier {
  Color _primary = kMain_beta_500;
  Color _secondary = kMain_alpha_500;
  Color _backgroundFill = Colors.white;
  IconData _timerPlayStopIcon = Icons.play_arrow;

  void updateColors() {
    if (_primary == Colors.white) {
      _primary = kMain_beta_500;
      _secondary = kMain_alpha_500;
      _backgroundFill = Colors.white;
      _timerPlayStopIcon = Icons.play_arrow;
    } else {
      _primary = Colors.white;
      _secondary = Colors.white;
      _backgroundFill = kMain_alpha_500;
      _timerPlayStopIcon = Icons.stop;
    }
    notifyListeners();
  }

  Color get primary => _primary;
  Color get secondary => _secondary;
  Color get backgroundFill => _backgroundFill;
  IconData get timerPlayStopIcon => _timerPlayStopIcon;
}
