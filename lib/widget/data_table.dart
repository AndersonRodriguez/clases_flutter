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
      appBar: AppBar(title: Text('DataTable')),
      body: Center(
        child: Container(
          child: DataTable(
            columnSpacing: 20.0,
            dataRowHeight: 20.0,
            dividerThickness: 2.0,
            columns: [
              DataColumn(
                numeric: false,
                label: Text('Carro'),
              ),
              DataColumn(
                label: Text('Modelo'),
              ),
              DataColumn(
                label: Text('Precio'),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text('Honda'),
                ),
                DataCell(
                  Text('2010'),
                ),
                DataCell(
                  Text('1.000.000'),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text('Mazda'),
                ),
                DataCell(
                  Text('2012'),
                ),
                DataCell(
                  Text('5.000.000'),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
