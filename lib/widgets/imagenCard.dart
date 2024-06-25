import 'package:flutter/material.dart';

class imagenCard extends StatelessWidget {
  const imagenCard({super.key, required this.img});

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        img,
        fit: BoxFit.fill,
      ),
      width: double.infinity,
      height: 180,
    );
  }
}
