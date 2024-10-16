import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/screens/home_screen.dart';

class CounterHomeScreen extends StatelessWidget {
  static const String routeName = '/counter';
  final String title;
  const CounterHomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, provider, child) => Container(
          color: Colors.blueGrey.withOpacity(0.05),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: const TextStyle(fontSize: 36),),
              Text("${provider.count}", style: const TextStyle(fontSize: 36)),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().reset();
                  Navigator.pop(context);
                },
                child: const Text('Reset Count'),
              ),
            ],
          ),
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterProvider>().increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
