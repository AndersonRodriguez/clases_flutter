import 'package:flutter/material.dart';

main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              // width: 200.0,
              // height: 200.0,
              // Color con HEXA
              // color: Color(0XFFFF0000),
              // Color con ARGB
              // color: Color.fromARGB(255, 255, 100, 100),
              // Colores predefinidos
              // color: Colors.cyan,
              // Decorar el contenedor
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 2,
                  style: BorderStyle.solid
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(6, 6),
                    blurRadius: 2.5
                  ),
                ],
                // Borde redondo en todas las esquinas
                // borderRadius: BorderRadius.all(Radius.circular(15)),
                // borderRadius: BorderRadius.circular(20),
                // Borde definido
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                ),
              ),
              // Alineacion del hijo (Probar varias)
              alignment: Alignment.center,
              // Padding a todos los lados
              // padding: EdgeInsets.all(20),
              // Padding en orden
              // padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              // padding: EdgeInsets.only(left: 20),
              // margin: EdgeInsets.only(bottom: 20),
              constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: 100,
              ),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
