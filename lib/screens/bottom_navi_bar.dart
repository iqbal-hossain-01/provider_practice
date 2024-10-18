import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/bottom_nevi_provider.dart';

class BottomNaviBar extends StatelessWidget {
  static const String routeName = '/bottom';
  const BottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomNeviProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation App'),
      ),
      body: Center(child: bottomProvider.pages.elementAt(bottomProvider.selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: bottomProvider.selectedIndex,
        onTap: bottomProvider.onItemTapped,
      ),
    );
  }
}
