import 'package:flutter/material.dart';

class tituloCard extends StatelessWidget {
  const tituloCard({super.key, required this.nombre});

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black, // Color de fondo del avatar
          child: Text(
            'E', // Inicial del nombre
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 10), // Espacio entre el nombre y el texto

        Text(
          nombre,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ],
    );
  }
}
