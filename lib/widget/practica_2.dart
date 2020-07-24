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
        primarySwatch: Colors.yellow,
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
  TextEditingController _name = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _phone = TextEditingController();

  List<String> _ingredients = [];
  String _size = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Datos',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Nombre:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: TextField(
                    controller: _name,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Apellido:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: TextField(
                    controller: _lastName,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Telefono:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: TextField(
                    controller: _phone,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ingredientes',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CheckboxGroup(
              checked: _ingredients,
              labels: <String>["Pollo", "Champiñon", "Carne", "Peperoni"],
              onSelected: (List<String> checked) {
                setState(() {
                  _ingredients = checked;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Tamaño',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioButtonGroup(
              picked: _size,
              labels: <String>["Grande", "Mediana", "Pequeña"],
              onSelected: (String selected) {
                setState(() {
                  _size = selected;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {

          Order order = Order(
            name: _name.text,
            lastName: _lastName.text,
            phone: _phone.text,
            ingretients: _ingredients,
            size: _size,
          );

          setState(() {
            _name.text = '';
            _lastName.text = '';
            _phone.text = '';
            _ingredients = [];
            _size = '';
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                order: order,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Order order;

  const DetailScreen({Key key, @required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Gracias por comprar',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Cliente: ${order.name} ${order.lastName} con telefono ${order.phone}'),
              SizedBox(
                height: 20.0,
              ),
              Text('Pizza ${order.size}, con ingrediente: ${order.ingretients.join(', ')}.')
            ],
          ),
        ),
      ),
    );
  }
}

class Order {
  final String name, lastName, phone, size;
  final List<String> ingretients;

  Order({this.name, this.lastName, this.phone, this.size, this.ingretients});
}
