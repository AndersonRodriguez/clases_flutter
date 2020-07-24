import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer')),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/imagen_1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 2.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Bogota',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Subtitulo'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Stack3 extends StatelessWidget {
  const Stack3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
          height: 300.0,
          width: 300.0,
        ),
        Container(
          color: Colors.red,
          height: 150.0,
          width: 150.0,
        ),
      ],
    );
  }
}

class Stack2 extends StatelessWidget {
  const Stack2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 150.0,
          right: 40.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.teal,
          ),
        ),
        Positioned(
          top: 150.0,
          right: 100.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
        ),
        Positioned(
          top: 210.0,
          right: 160.0,
          child: Container(
            height: 50.0,
            width: 50.0,
            color: Colors.blue,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50.0,
            width: 50.0,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}

class StackPositioned extends StatelessWidget {
  const StackPositioned({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.teal,
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
