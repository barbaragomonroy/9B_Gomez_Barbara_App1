import 'package:flutter/material.dart';

class descripcion extends StatelessWidget {
  const descripcion({super.key, required this.des});

  final String des;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      child: Text(
        des,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
