import 'dart:async';

import 'package:flutter/foundation.dart';

class CountdownProvider with ChangeNotifier {
  int _timeRemaining = 10;
  Timer? _timer;

  int get timeRemaining => _timeRemaining;


  void startCountdown() {
    _timer?.cancel();
    _timeRemaining = 10;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeRemaining > 0) {
        _timeRemaining--;
        notifyListeners();
      } else {
        timer.cancel();
      }
    });
  }

  void resetCountdown() {
    _timer?.cancel();
    _timeRemaining = 10;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}