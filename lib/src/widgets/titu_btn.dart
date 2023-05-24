//clase boton
import 'package:flutter/material.dart';

class boton1 extends StatelessWidget {
  const boton1({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          texto(text: title),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 4, 83, 107),
              onPrimary: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              // Acción de inicio de sesión
            },
          ),
        ],
      ),
    );
  }
}

//clase texto
class texto extends StatelessWidget {
  const texto({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20 / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 20 / 4),
              height: 5,
              color: Color.fromARGB(255, 7, 119, 128).withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
