
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop("SUCCESS");
          },
          child: Text("Complete Payment"),
        ),
      ),
    );
  }
}