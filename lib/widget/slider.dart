import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  double rating = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              width: 300.0,
              child: Slider(
                value: rating,
                min: 0,
                max: 100,
                divisions: 5,
                label: '$rating',
                onChanged: (double newRating) {
                  setState(() {
                    rating = newRating;
                  });
                },
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Rango: $rating',
                style: TextStyle(fontSize: 25.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
