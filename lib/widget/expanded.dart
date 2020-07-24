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
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.yellow,
                height: 50,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                height: 600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
