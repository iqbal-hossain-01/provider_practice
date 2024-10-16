import 'package:flutter/material.dart';
import 'package:provider_practice/screens/counter_home_screen.dart';
import 'package:provider_practice/screens/timer_screen.dart';
import 'package:provider_practice/screens/todo_app.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Practice"),
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, CounterHomeScreen.routeName);
                  },
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, TodoApp.routeName);
                  },
                ),
                const Text("Todo App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, TimerScreen.routeName);
                  },
                ),
                const Text("Timer App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueGrey.withOpacity(0.08),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text(
                    "GO",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                const Text("Counter App"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
