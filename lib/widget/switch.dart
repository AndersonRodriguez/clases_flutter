import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
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

  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Switch(
                value: _value,
                onChanged: _onChanged,
              ),
              Text(
                'Valor: $_value',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
