import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        // padding: EdgeInsets.all(50.0),
        // padding: EdgeInsets.only(top: 100, right: 20),
        // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}