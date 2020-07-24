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
      appBar: AppBar(title: Text('ListTile')),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Titulo'),
            subtitle: Text('Subtitulo'),
            trailing: Icon(Icons.shopping_basket),
            onTap: (){
              print('Tab a ListTile');
            },
            onLongPress: (){
              print('LongPress ListTile');
            },
            dense: true,
            selected: true,
            enabled: true,
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Titulo 2'),
            subtitle: Text('Subtitulo 2'),
            trailing: Icon(Icons.share),
            onTap: (){
              print('Tab a ListTile 2');
            },
            onLongPress: (){
              print('LongPress ListTile 2');
            },
            dense: true,
            selected: true,
            enabled: true,
          ),
        ],
      ),
    );
  }
}
