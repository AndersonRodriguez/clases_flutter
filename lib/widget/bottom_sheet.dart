import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
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
  _showBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.red,
      barrierColor: Color.fromARGB(30, 0, 0, 255),
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          alignment: Alignment.topCenter,
          child: Text(
            'Prueba',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 50,
          child: OutlineButton(
            child: Text('Abrir'),
            onPressed: () {
              _showBottomSheet(context);
            },
          ),
        ),
      ),
    );
  }
}
