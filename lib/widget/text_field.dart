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
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TexField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Ingrese su informacion',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Nombre:',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(width: 20.0),
                SizedBox(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    maxLength: 10,
                    cursorColor: Colors.green,
                    obscureText: _showPass,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      icon: Icon(Icons.people),
                      hintText: 'Nombre',
                      // border: InputBorder.none
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      _showPass = !_showPass;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // Email
            Row(
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  child: TextField(
                    maxLength: 50,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    autocorrect: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(color: Colors.blue),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // Password
            Row(
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  child: TextField(
                    maxLength: 50,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    autocorrect: false,
                    obscureText: true,
                    cursorWidth: 3,
                    enabled: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.playlist_add_check),
                      hintText: 'Contraseña',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // Telefono
            Row(
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  child: TextField(
                    maxLength: 50,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    autocorrect: false,
                    obscureText: true,
                    cursorWidth: 3,
                    enabled: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Telefono',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
