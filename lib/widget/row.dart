import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle styleText = TextStyle(
      fontSize: 40,
      decoration: TextDecoration.none,
    );

    return MaterialApp(
      home: Container(
        color: Color.fromARGB(255, 230, 240, 255),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic, // Alinea con la base del texto
            children: <Widget>[
              Text(
                'Uno',
                style: styleText,
              ),
              Text(
                'Dos',
                style: styleText.copyWith(fontSize: 35),
              ),
              Text(
                'Tres',
                style: styleText.copyWith(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
