import 'package:flutter/material.dart';

class SwipeDeleteApp extends StatefulWidget {
  static const String routeName = '/swipe';

  const SwipeDeleteApp({super.key});

  @override
  State<SwipeDeleteApp> createState() => _SwipeDeleteAppState();
}

class _SwipeDeleteAppState extends State<SwipeDeleteApp> {
  List<String> items = List.generate(
    10,
    (index) => 'Item ${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Delete'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.delete_rounded),
                  ),
                ],
              ),
            ),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
