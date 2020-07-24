import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var cities = ['Bogota', 'Cali', 'Medellin'];

  var firstCity = 'Bogota';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones'),
          actions: <Widget>[
            Icon(Icons.account_circle),
            PopupMenuButton(
              onSelected: (option) {
                print(option);
              },
              itemBuilder: (BuildContext context) {
                return Item.options.map((option) {
                  return PopupMenuItem(
                    value: option,
                    child: Text(option),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Botones body',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  print('Pressed RaisedButton');
                },
                child: Text('Rised Button'),
              ),
              IconButton(
                icon: Icon(Icons.volume_up),
                tooltip: 'Incrementa el volumen',
                onPressed: () {
                  print('Pressed IconButton');
                },
              ),
              Text('Volumen'),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.green,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.red,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  print('Pressed FlatButton');
                },
                child: Text(
                  'FlatButton',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              OutlineButton(
                shape: StadiumBorder(),
                highlightColor: Colors.blue,
                onPressed: () {},
                child: Text('Outline'),
              ),
              OutlineButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarm),
                label: Text('Agregar'),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: () {},
                    child: Text('Uno'),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text('Dos'),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text('Tres'),
                  ),
                ],
              ),
              DropdownButton(
                items: cities.map((String city) {
                  return DropdownMenuItem(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String newCity) {
                  setState(() {
                    firstCity = newCity;
                  });
                },
                value: firstCity,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Pressed FloatingActionButton');
          },
          child: Icon(Icons.phone),
        ),
      ),
    );
  }
}

class Item {
  static const Inbox = 'Inbox';
  static const About = 'About';
  static const SignOut = 'SignOut';

  static const List options = [Inbox, About, SignOut];
}
