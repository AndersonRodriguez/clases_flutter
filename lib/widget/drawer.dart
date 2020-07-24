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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 35.0,
              child: DrawerHeader(
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.all(2.0),
                child: Text(
                  'Header',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              title: Text(
                'Inbox',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text('Un Subtitulo'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Inbox(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.send,
                color: Colors.blue,
              ),
              title: Text(
                'Send',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text('Enviar un mensaje'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print('Redirecciona');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text('Ver perfil'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print('Redirecciona');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text('Ver configuraciones'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print('Redirecciona');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Screen 1'),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: Center(
        child: Text('Inbox'),
      ),
    );
  }
}
