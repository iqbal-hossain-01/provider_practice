import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/stopwatch_provider.dart';

class StopWatch extends StatelessWidget {
  static const String routeName = '/stopwatch';
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StopWatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<StopwatchProvider>(
              builder: (context, provider, child) {
                final elapsed = provider.elapsed;
                final minutes = elapsed.inMinutes.toString().padLeft(2, '0');
                final seconds = (elapsed.inSeconds % 60).toString().padLeft(2, '0');
                final milliseconds = (elapsed.inMilliseconds % 1000).toString().padLeft(3, '0');

                return Text('$minutes:$seconds:$milliseconds');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => context.read<StopwatchProvider>().start(),
                  child: const Text('Start'),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () => context.read<StopwatchProvider>().stop(),
                  child: const Text('Stop'),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () => context.read<StopwatchProvider>().reset(),
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
