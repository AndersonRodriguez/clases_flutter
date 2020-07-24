import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
        title: Text('Check Radio Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Seleccione varias',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CheckboxGroup(
              activeColor: Colors.orange,
              checkColor: Colors.lime,
              disabled: ['Champiñones', 'Pollo'],
              checked: ['Extra queso', 'Pollo'],
              orientation: GroupedButtonsOrientation.VERTICAL,
              labels: <String>['Piña', 'Extra queso', 'Champiñones', 'Pollo'],
              onSelected: (List<String> checked) => print(checked.toString()),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Seleccione un tamaño',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioButtonGroup(
              labelStyle: TextStyle(fontSize: 20.0),
              labels: <String>['Pequeña', 'Mediana', 'Grande'],
              onSelected: (String selected) => print(selected),
            ),
          ],
        ),
      ),
    );
  }
}
