import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/shared_pref_provider.dart';

class SharedPrefScreen extends StatefulWidget {
  static const String routeName = '/shared';

  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<SharedPreferencesProvider>(context, listen: false).loadValue();
  }

  @override
  Widget build(BuildContext context) {
    final storageProvider = Provider.of<SharedPreferencesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Enter a value'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              storageProvider.saveValue(_controller.text);
            },
            child: const Text('Save'),
          ),
          ElevatedButton(
            onPressed: () {
              storageProvider.loadValue();
            },
            child: const Text('Load'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Saved value: ${storageProvider.savedValue}'),
        ],
      ),
    );
  }
}
