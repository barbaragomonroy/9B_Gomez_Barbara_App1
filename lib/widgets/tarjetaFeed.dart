import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_application_2/widgets/botonesCard.dart';
import 'package:flutter_application_2/widgets/descripcion.dart';
import 'package:flutter_application_2/widgets/imagenCard.dart';
import 'package:flutter_application_2/widgets/tituloCard.dart';

class TarjetaFeed extends StatelessWidget {
  const TarjetaFeed({
    super.key,
    required this.tarjeta,
  });

  final Map<String, String> tarjeta;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 203, 228, 239),
        borderRadius: BorderRadius.circular(15), // Bordes redondeados
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      height: 400,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tituloCard(
            nombre: tarjeta["nombre"]!,
          ),
          SizedBox(height: 10), // Espacio entre el nombre y el texto
          descripcion(
            des: tarjeta["descripcion"]!,
          ),
          SizedBox(height: 10),
          imagenCard(
            img: tarjeta["imagen"]!,
          ),
          Spacer(), // Espacio flexible para empujar los botones al fondo
          botonesCard(),
        ],
      ),
    );
  }
}

class tituloCard extends StatelessWidget {
  const tituloCard({
    super.key,
    required this.nombre,
  });

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Text(
      nombre,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}

class descripcion extends StatelessWidget {
  const descripcion({
    super.key,
    required this.des,
  });

  final String des;

  @override
  Widget build(BuildContext context) {
    return Text(
      des,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black54,
      ),
    );
  }
}

class imagenCard extends StatelessWidget {
  const imagenCard({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10), // Bordes redondeados para la imagen
      child: Image.network(
        img,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class botonesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Like'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Share'),
        ),
      ],
    );
  }
}
