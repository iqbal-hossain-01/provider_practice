import 'package:flutter/foundation.dart';

class PullToRefreshProvider with ChangeNotifier {
  List<String> _items = ['Item 1', 'Item 2', 'Item 3'];
  List<String> get items => _items;

  Future<void>? refreshItems() async {
    await Future.delayed(Duration(seconds: 2)); // Fake delay for demo
      _items = ['New Item 1', 'New Item 2', 'New Item 3'];
      notifyListeners();
  }
}