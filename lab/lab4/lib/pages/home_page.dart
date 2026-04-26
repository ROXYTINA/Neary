import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(48),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: buttonStyle,
                onPressed: () => context.push('/profile'),
                child: const Text("Profile (Exercise 1)"),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () => context.push('/home/item/42'),
                child: const Text("Open Item 42 (Deep Link)"),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () async {
                  final result = await context.push('/checkout');
                  print("Checkout result: $result");
                },
                child: const Text("Checkout (Return Data)"),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () => context.push('/catalog'),
                child: const Text("Catalog (States UI)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}