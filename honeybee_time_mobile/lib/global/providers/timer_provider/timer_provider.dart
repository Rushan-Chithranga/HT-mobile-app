import 'package:flutter/material.dart';
import 'dart:async';

class TimerProvider extends ChangeNotifier {
  Timer? _timer;
  int _seconds = 0;
  int _minutes = 0;
  int _hours = 0;
  bool _isStarted = false;

  String get digitalSeconds => _formatTime(_seconds);
  String get digitalMinutes => _formatTime(_minutes);
  String get digitalHours => _formatTime(_hours);
  bool get isStarted => _isStarted;

  void toggleStartStop() {
    if (_isStarted) {
      stop();
    } else {
      start();
    }
  }

  void stop() {
    _timer?.cancel();
    _isStarted = false;
    notifyListeners();
  }

  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _incrementTime();
      notifyListeners();
    });

    _isStarted = true;
    notifyListeners();
  }

  void _incrementTime() {
    _seconds++;

    if (_seconds > 59) {
      _seconds = 0;
      _minutes++;

      if (_minutes > 59) {
        _minutes = 0;
        _hours++;
      }
    }
  }

  String _formatTime(int time) {
    return time.toString().padLeft(2, '0');
  }
}
