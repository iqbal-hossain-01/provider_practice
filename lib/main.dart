import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/bottom_nevi_provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/providers/shared_pref_provider.dart';
import 'package:provider_practice/providers/theme_provider.dart';
import 'package:provider_practice/providers/timer_provider.dart';
import 'package:provider_practice/providers/todo_provider.dart';
import 'package:provider_practice/screens/bottom_navi_bar.dart';
import 'package:provider_practice/screens/counter_home_screen.dart';
import 'package:provider_practice/screens/drawer_screen.dart';
import 'package:provider_practice/screens/home_screen.dart';
import 'package:provider_practice/screens/pull_to_refresh.dart';
import 'package:provider_practice/screens/search_Delegate.dart';
import 'package:provider_practice/screens/shared_pref_screen.dart';
import 'package:provider_practice/screens/swipe_delete_app.dart';
import 'package:provider_practice/screens/todo_app.dart';

import 'screens/timer_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ChangeNotifierProvider(create: (context) => TodoProvider(),),
      ChangeNotifierProvider(create: (context) => TimerProvider(),),
      ChangeNotifierProvider(create: (context) => SharedPreferencesProvider(),),
      ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ChangeNotifierProvider(create: (context) => BottomNeviProvider(),),
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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => const HomeScreen(),
        CounterHomeScreen.routeName : (context) => const CounterHomeScreen(title: "Your count Here"),
        TodoApp.routeName : (context) => const TodoApp(),
        TimerScreen.routeName : (context) => const TimerScreen(),
        SharedPrefScreen.routeName : (context) => const SharedPrefScreen(),
        BottomNaviBar.routeName : (context) => const BottomNaviBar(),
        SwipeDeleteApp.routeName : (context) => const SwipeDeleteApp(),
        PullToRefresh.routeName : (context) => const PullToRefresh(),
        DrawerScreen.routeName : (context) => const DrawerScreen(),
        SearchDelegateApp.routeName : (context) => const SearchDelegateApp(),


      },
    );
  }
}
