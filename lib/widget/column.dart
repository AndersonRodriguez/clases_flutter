import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Color.fromARGB(255, 230, 240, 255),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('Primero'),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              ),
              Text(
                'Segunda',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 150.0,
                width: 120,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
