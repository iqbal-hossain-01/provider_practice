import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/theme_provider.dart';
import 'package:provider_practice/screens/bottom_navi_bar.dart';
import 'package:provider_practice/screens/counter_home_screen.dart';
import 'package:provider_practice/screens/drawer_screen.dart';
import 'package:provider_practice/screens/pull_to_refresh.dart';
import 'package:provider_practice/screens/search_Delegate.dart';
import 'package:provider_practice/screens/shared_pref_screen.dart';
import 'package:provider_practice/screens/swipe_delete_app.dart';
import 'package:provider_practice/screens/timer_screen.dart';
import 'package:provider_practice/screens/todo_app.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ThemeProvider>(context, listen: false).loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Practice"),
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
        actions: [
          Switch(value: themeProvider.isDarkTheme, onChanged: (value) {
            themeProvider.toggleTheme();
          })
        ],
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
                  onPressed: () {
                    Navigator.pushNamed(context, SharedPrefScreen.routeName);
                  },
                ),
                const Text("SharedPreferences"),
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
                    Navigator.pushNamed(context, BottomNaviBar.routeName);
                  },
                ),
                const Text("Bottom Navigation Bar", textAlign: TextAlign.center,),
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
                    Navigator.pushNamed(context, SwipeDeleteApp.routeName);
                  },
                ),
                const Text("Swipe To Delete"),
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
                    Navigator.pushNamed(context, PullToRefresh.routeName);
                  },
                ),
                const Text("Pull To Refresh App"),
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
                    Navigator.pushNamed(context, DrawerScreen.routeName);
                  },
                ),
                const Text("Drawer Menu App"),
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
                    Navigator.pushNamed(context, SearchDelegateApp.routeName);
                  },
                ),
                const Text("Search Delegate App", textAlign: TextAlign.center,),
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
