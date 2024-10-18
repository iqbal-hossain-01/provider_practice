import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_practice/screens/wid.dart';

class BottomNeviProvider with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  static const List<Widget> _pages = <Widget> [
    Scaffold(
      body: Column(
        children: [
          Text('This is one'),
          Text('This is Two'),
          Text('This is There'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is four'),
              Icon(Icons.person),
            ],
          ),
          Text('This is five')
        ],
      ),
    ),
    Wid(),
    Text('Profile Page'),
  ];
  List<Widget> get pages => _pages;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

}