import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lime,
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
  List<MyItem> _items = <MyItem>[
    MyItem(header: 'Titulo 1', body: "Contenido 1"),
    MyItem(header: 'Titulo 2', body: "Contenido 2"),
    MyItem(header: 'Titulo 3', body: "Contenido 3", isExpanded: true),
    MyItem(header: 'Titulo 4', body: "Contenido 4"),
    MyItem(header: 'Titulo 5', body: "Contenido 5", isExpanded: true),
    MyItem(header: 'Titulo 6', body: "Contenido 6"),
    MyItem(header: 'Titulo 7', body: "Contenido 7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items.map((MyItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Row(
                      children: <Widget>[
                        Text('Hotel: '),
                        Text(
                          item.header,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: Container(
                    child: Text(
                      item.body,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  )
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class MyItem {
  bool isExpanded;
  final String header;
  final String body;

  MyItem({this.isExpanded: false, this.header, this.body});
}
