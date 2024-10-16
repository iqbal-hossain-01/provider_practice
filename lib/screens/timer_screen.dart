import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/timer_provider.dart';

class TimerScreen extends StatelessWidget {
  static const String routeName = '/timer';
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<TimerProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Seconds: ${timerProvider.seconds}'),
            ElevatedButton(onPressed: timerProvider.startTimer, child: const Text('Start')),
            ElevatedButton(onPressed: timerProvider.stopTimer, child: const Text('Stop')),
            ElevatedButton(onPressed: timerProvider.resetTimer, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
