import 'dart:async';

import 'package:flutter/foundation.dart';

class TimerProvider with ChangeNotifier {
  int _seconds = 0;
  Timer? _timer;
  int get seconds => _seconds;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds++;
      notifyListeners();
    });
  }
  void stopTimer() {
    _timer?.cancel();
  }
  void resetTimer() {
    _seconds = 0;
    _timer?.cancel();
    notifyListeners();
  }
}