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
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  VoidCallback _showpersistentSheet;

  @override
  void initState() {
    super.initState();
    _showpersistentSheet = _sheetBottomSheet;
  }

  void _sheetBottomSheet() {
    setState(() {
      _showpersistentSheet = null;
    });

    _scaffoldkey.currentState
        .showBottomSheet((context) {
          return Container(
            color: Colors.blue,
            height: 200.0,
            child: Center(
              child: Text(
                'BottomSheet Persistant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showpersistentSheet = _sheetBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 50,
                child: OutlineButton(
                  child: Text('Abrir'),
                  onPressed: _showpersistentSheet,
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.cyan,
                child: Text(
                  'Prueba',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print('Oprimio el boton');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
