import 'package:flutter/material.dart';

class Wid extends StatelessWidget {
  const Wid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Text('Hello'),
        ),
        ListTile(
          title: Text('Hello 2'),
        ),
        Card(
          child: Text('Hello 3'),
        ),
      ],
    );
  }
}
