import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.cyan,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}