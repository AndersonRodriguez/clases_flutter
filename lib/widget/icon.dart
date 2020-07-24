import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Icon(
            Icons.alarm_off,
            size: 80,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}