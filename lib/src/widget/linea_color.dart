import 'package:flutter/material.dart';

class LineaColor extends StatelessWidget {
  final double ancho;
  final double alto;
  final Color color;
  final double bordeRedondoDerecho;
  final double bordeRedondoIzquierdo;

  const LineaColor(
      {Key key,
      this.ancho = 100.0,
      this.alto = 2,
      this.color = Colors.grey,
      this.bordeRedondoDerecho = 0.0,
      this.bordeRedondoIzquierdo = 0.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho,
      height: alto,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(bordeRedondoIzquierdo),
              right: Radius.circular(bordeRedondoDerecho))),
    );
  }
}
