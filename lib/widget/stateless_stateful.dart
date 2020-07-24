import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SinEstado(),
              ConEstado(),
            ],
          ),
        ),
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Center(
          child: Text('Sin estado'),
        ),
      ),
    );
  }
}

class ConEstado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State<ConEstado> {
  
  bool _activo;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        setState(() {
          _activo = !_activo;
        });
        
      },
      child: Container(
        height: 200,
        color: _activo ? Colors.blue : Colors.grey,
        child: Center(
          child: Text('Con estado'),
        ),
      ),
    );
  }
}
