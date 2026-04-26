import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String id;

  ItemPage({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item $id")),
      body: Center(
        child: Text(
          "Item Details for ID: $id",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}