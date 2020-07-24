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
      appBar: AppBar(title: Text('TabBar')),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.pink,
                indicatorColor: Colors.pink,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: <Widget>[
                  Tab(
                    text: 'Home',
                    icon: Icon(Icons.add),
                    iconMargin: EdgeInsets.all(1.0),
                  ),
                  Tab(text: 'Mas'),
                  Tab(text: 'Buscar'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: Home(),
                    ),
                    Container(
                      child: More(),
                    ),
                    Container(
                      child: Search(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Home',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Mas',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.alarm),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Buscar',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
