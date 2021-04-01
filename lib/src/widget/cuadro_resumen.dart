import 'package:flutter/material.dart';

class CuadroBalanceResumen extends StatelessWidget {
  final ancho;
  final alto;
  final Color fondo;
  final Color circulo;
  final double monto;
  final String titulo;
  final double bordeInferiorDerecho;
  final double bordeInferiorIzquierdo;

  const CuadroBalanceResumen(
      {this.ancho,
      this.alto,
      this.fondo,
      this.circulo = Colors.grey,
      this.monto = 0.0,
      this.titulo = '',
      this.bordeInferiorDerecho = 0,
      this.bordeInferiorIzquierdo = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho,
      height: alto,
      decoration: BoxDecoration(
          color: fondo,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(bordeInferiorIzquierdo),
              bottomRight: Radius.circular(bordeInferiorDerecho))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  border: Border.all(color: circulo, width: 3),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$monto \$',
              style: TextStyle(color: Color(0xffF1EBFF), fontSize: 30.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$titulo',
              style: TextStyle(
                  color: Color(0xffF1EBFF).withOpacity(0.7),
                  fontSize: 15.0,
                  height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
