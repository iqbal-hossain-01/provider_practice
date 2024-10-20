import 'dart:async';

import 'package:flutter/foundation.dart';

class StopwatchProvider with ChangeNotifier {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;

  Duration get elapsed => _stopwatch.elapsed;

  void start() {
    if (!_stopwatch.isRunning) {
      print('Stopwatch started');
      _stopwatch.start();
      _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        print('Timer ticking: ${_stopwatch.elapsedMilliseconds}');
        notifyListeners();
      });
    }
  }

  void stop() {
    _stopwatch.stop();
    _timer?.cancel();
    notifyListeners();
  }

  void reset() {
    _stopwatch.reset();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

}