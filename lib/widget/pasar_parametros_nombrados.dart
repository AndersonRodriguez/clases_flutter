import 'package:clasesFlutter/widget/rutas_nombradas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      routes: {
        '/': (context) => ColorScreen(),
        '/edit': (context) => EditColorScreen()
      },
    );
  }
}

class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color _color = Color.fromARGB(0, 0, 100, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/edit',
                arguments: _color,
              ).then((value) {
                setState(() {
                  _color = value;
                });
              });
            },
            child: Text('Editar'),
          ),
        ),
      ),
    );
  }
}

class EditColorScreen extends StatefulWidget {
  @override
  _EditColorScreenState createState() => _EditColorScreenState();
}

class _EditColorScreenState extends State<EditColorScreen> {
  List<TextEditingController> _controllers;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Color color = ModalRoute.of(context).settings.arguments;

    final List<String> canales = [
      color.red.toString(),
      color.green.toString(),
      color.blue.toString()
    ];

    _controllers = [
      for (int i = 0; i < 3; i++)
        TextEditingController(text: canales[i])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              for (int i = 0; i < 3; i++)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _controllers[i],
                    ),
                  ),
                )
            ],
          ),
          RaisedButton(
            onPressed: () {
              final int r = int.parse(_controllers[0].text);
              final int g = int.parse(_controllers[1].text);
              final int b = int.parse(_controllers[2].text);

              Navigator.pop(context, Color.fromARGB(255, r, g, b));
              // Navigator.of(context).pop(Color.fromARGB(255, r, g, b));
            },
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
