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
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera pantalla'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image(
            image: AssetImage('assets/imagen_1.jpg'),
            width: 120.0,
            height: 120.0,
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pantalla'),
      ),
      body: Hero(
        tag: 'imageHero',
        child: Image(
          image: AssetImage('assets/imagen_1.jpg'),
          width: 400.0,
          height: 400.0,
        ),
      ),
    );
  }
}
