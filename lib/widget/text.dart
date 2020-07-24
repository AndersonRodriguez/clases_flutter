import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: SizedBox(
          width: 300,
          height: 150,
          child: Text(
            'Un Texto ' * 30,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.blue,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              decorationThickness: 1,
              decorationStyle: TextDecorationStyle.wavy,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 1.0,
                ),
              ],
              letterSpacing: 4,
              wordSpacing: 5,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
