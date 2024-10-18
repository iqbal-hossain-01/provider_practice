import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider  with ChangeNotifier {
  String _savedValue = '';

  String get savedValue => _savedValue;

  Future<void> saveValue(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('myValue', value);
    _savedValue = value;
    notifyListeners();
  }

  Future<void> loadValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _savedValue = prefs.getString('myValue') ?? 'No value saved';
    notifyListeners();
  }
}