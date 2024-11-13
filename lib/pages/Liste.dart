// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Liste extends StatelessWidget {
  // Sample list data
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text(items[index]),
            onTap: () {
              // Action when tapping on an item
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Liste(),
  ));
}
