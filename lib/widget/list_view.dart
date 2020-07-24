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
  final List<String> _colorNames = [
    'Color1',
    'Color2',
    'Color3',
    'Color4',
    'Color5'
  ];
  final List<int> _colorCodes = [50, 100, 200, 300, 400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 50.0,
            width: 200.0,
            color: Colors.amber[_colorCodes[index]],
            child: Center(
              child: Text('${_colorNames[index]}'),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if(index == 1) {
            return Divider(
              color: Colors.pink,
            );
          }else {
            return Divider();
          }
        },
        itemCount: _colorNames.length,
      ),
    );
  }
}

class BuilderListView extends StatelessWidget {
  const BuilderListView({
    Key key,
    @required List<int> colorCodes,
    @required List<String> colorNames,
  })  : _colorCodes = colorCodes,
        _colorNames = colorNames,
        super(key: key);

  final List<int> _colorCodes;
  final List<String> _colorNames;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: _colorCodes.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50.0,
          color: Colors.amber[_colorCodes[index]],
          child: Center(
            child: Text('${_colorNames[index]}'),
          ),
        );
      },
    );
  }
}

class NormalListView extends StatelessWidget {
  const NormalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Titulo'),
          subtitle: Text('Mi Subtitulo'),
          trailing: Icon(Icons.account_box),
          enabled: true,
          selected: true,
        ),
        Image(
          image: AssetImage('assets/imagen_1.jpg'),
          height: 300.0,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Titulo'),
          subtitle: Text('Mi Subtitulo'),
          trailing: Icon(Icons.account_box),
          enabled: true,
          selected: true,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Titulo'),
          subtitle: Text('Mi Subtitulo'),
          trailing: Icon(Icons.account_box),
          enabled: true,
          selected: true,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Titulo'),
          subtitle: Text('Mi Subtitulo'),
          trailing: Icon(Icons.account_box),
          enabled: true,
          selected: true,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Titulo'),
          subtitle: Text('Mi Subtitulo'),
          trailing: Icon(Icons.account_box),
          enabled: true,
          selected: true,
        )
      ],
    );
  }
}
