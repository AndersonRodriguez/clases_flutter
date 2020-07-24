import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 320,
            height: 320,
            // color: Colors.yellow,

            // Imagenes con el Container
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 3,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/05/30/12/58/iran-5238845_960_720.jpg',
                ),
              ),
            ),

            // Imagen desde los asset
            // child: Image.asset(
            //   'assets/imagen_1.jpg',
            //   fit: BoxFit.none,
            //   scale: 4,
            //   repeat: ImageRepeat.repeat,
            // ),
            // Imagen desde la web
            // child: Image.network(
            //   'https://cdn.pixabay.com/photo/2020/05/30/12/58/iran-5238845_960_720.jpg',
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      ),
    );
  }
}
