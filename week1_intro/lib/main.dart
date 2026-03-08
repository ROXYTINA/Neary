import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),

      home: Scaffold(
        appBar: AppBar(
            title: const Text("Sreng Sopheakanha"),
            backgroundColor: Colors.cyan[300]),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
              const SizedBox(height: 16),
              const Text('Flutter is awesome!', // Vertical spacing
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Text('Week 1 — Getting Started',
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),

      ),

      );
  }
}