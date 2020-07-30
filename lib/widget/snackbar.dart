import 'package:flutter/material.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  _showSnackBar() {
    final snackBar = SnackBar(
      content: Row(
        children: <Widget>[
          Icon(Icons.thumb_up),
          SizedBox(width: 10.0),
          Text(
            'Soy un SnackBar',
            style: TextStyle(fontSize: 25.0, color: Colors.white),
          )
        ],
      ),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.cyan,
    );

    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          color: Colors.cyan,
          child: Text(
            'Notificacion',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          onPressed: _showSnackBar,
        ),
      ),
    );
  }
}
