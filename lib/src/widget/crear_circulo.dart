import 'package:flutter/material.dart';

class CrearCirculo extends StatelessWidget {
  final double size;
  final Color color;

  const CrearCirculo({Key key, this.size, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(200)),
    );
  }
}
