import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/countdown_provider.dart';

class TimerCountdown extends StatefulWidget {
  static const String routeName = '/timer_countdown';

  const TimerCountdown({super.key});

  @override
  State<TimerCountdown> createState() => _TimerCountdownState();
}

class _TimerCountdownState extends State<TimerCountdown> {
  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<CountdownProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countdown Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time remaining: ${timerProvider.timeRemaining} seconds'),
            ElevatedButton(
              onPressed: context.read<CountdownProvider>().startCountdown,
              child: const Text('Start Countdown'),
            ),
            ElevatedButton(
              onPressed: context.read<CountdownProvider>().resetCountdown,
              child: const Text('Reset Countdown'),
            ),
          ],
        ),
      ),
    );
  }
}
