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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialog'),
      ),
      body: Center(
        child: Container(
          width: 150.0,
          height: 50,
          child: FlatButton(
            onPressed: () {
              showCupertinoAlert(context);
            },
            child: Text('Alert'),
          ),
        ),
      ),
    );
  }
}

void showCupertinoAlert(BuildContext context) {
  var cupertunoAlertDialog = CupertinoAlertDialog(
    title: Text('Titulo de cupertino'),
    content: Text('Este es el content de cupertino'),
    actions: <Widget>[
      CupertinoDialogAction(
        child: Text('Si'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoDialogAction(
        child: Text('No'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) => cupertunoAlertDialog,
  );
}
