import 'package:flutter/material.dart';

void main() => runApp(const tyc());

class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terminos y Condiciones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Terminos y Condiciones'),
        ),
        body: Container(
          child: Text(
              'No debes subir virus ni código malicioso, usar los servicios para enviar spam ni realizar actividades que puedan inhabilitar, sobrecargar, obstaculizar ni alterar el correcto funcionamiento de nuestros servicios, sistemas o Productos, ni afectar a su integridad, manejo o apariencia.'),
        ),
      ),
    );
  }
}
