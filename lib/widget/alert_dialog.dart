import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
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
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Center(
        child: Container(
          width: 150.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.green,
            child: Text(
              'Alert',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              showAlert(context);
            },
          ),
        ),
      ),
    );
  }
}

void showAlert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Titulo de la alerta'),
    content: Text('Este es el content de la alerta'),
    actions: <Widget>[
      RaisedButton(
        color: Colors.green,
        child: Text(
          'Si',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      RaisedButton(
        color: Colors.green,
        child: Text(
          'No',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
