import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/providers/timer_provider.dart';
import 'package:provider_practice/providers/todo_provider.dart';
import 'package:provider_practice/screens/counter_home_screen.dart';
import 'package:provider_practice/screens/home_screen.dart';
import 'package:provider_practice/screens/todo_app.dart';

import 'screens/timer_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ChangeNotifierProvider(create: (context) => TodoProvider(),),
      ChangeNotifierProvider(create: (context) => TimerProvider(),),
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => const HomeScreen(),
        CounterHomeScreen.routeName : (context) => const CounterHomeScreen(title: "Your count Here"),
        TodoApp.routeName : (context) => const TodoApp(),
        TimerScreen.routeName : (context) => const TimerScreen(),

      },
    );
  }
}
