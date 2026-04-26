import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWide = constraints.maxWidth > 600;

        return Scaffold(
          appBar: AppBar(title: Text("Profile")),
          body: isWide
              ? Row(
            children: [
              Expanded(child: _info()),
              Expanded(child: _details()),
            ],
          )
              : Column(
            children: [
              _info(),
              _details(),
            ],
          ),
        );
      },
    );
  }

  Widget _info() => Container(
    height: 200,
    color: Colors.blue,
    child: Center(child: Text("Info")),
  );

  Widget _details() => Container(
    height: 200,
    color: Colors.green,
    child: Center(child: Text("Details")),
  );
}