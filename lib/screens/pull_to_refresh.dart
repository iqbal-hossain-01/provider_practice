import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/main.dart';
import 'package:provider_practice/providers/pull_to_refresh_provider.dart';

class PullToRefresh extends StatefulWidget {
  static const String routeName = '/pull';
  const PullToRefresh({super.key});

  @override
  State<PullToRefresh> createState() => _PullToRefreshState();
}

class _PullToRefreshState extends State<PullToRefresh> {
  List<String> _items = ['Item 1', 'Item 2', 'Item 3'];

  Future<void> refreshItems() async {
    await Future.delayed(const Duration(seconds: 2)); // Fake delay for demo
    setState(() {
      _items = ['New Item 1', 'New Item 2', 'New Item 3'];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pull To Refresh'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: refreshItems,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_items[index]),
            );
          },
        ),
      ),
    );
  }
}
