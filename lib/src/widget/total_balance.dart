import 'package:flutter/material.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({
    @required this.total,
    this.subtitulo,
  });

  final double total;
  final String subtitulo;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'totalBalance',
      child: Container(
        width: 250,
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              TextSpan(
                  text: '${total.toString().split('.')[0]}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              TextSpan(
                  text: ',${total.toString().split('.')[1]}',
                  style: TextStyle(color: Colors.black, fontSize: 25)),
            ])),
            RichText(
              text: TextSpan(
                text: subtitulo,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
