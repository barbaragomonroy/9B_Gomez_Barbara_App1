import 'package:flutter/material.dart';

class botonesCard extends StatelessWidget {
  const botonesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón
              print('¡Botón Me gusta presionado!');
            },
            child: Text('Me gusta'),
          ),
          SizedBox(width: 10), // Espacio entre botones
          ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón
              print('¡Botón Comenta presionado!');
            },
            child: Text('Comenta'),
          ),
          SizedBox(width: 10), // Espacio entre botones
          ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón
              print('¡Botón Compartir presionado!');
            },
            child: Text('Compartir'),
          ),
        ],
      ),
    );
  }
}
