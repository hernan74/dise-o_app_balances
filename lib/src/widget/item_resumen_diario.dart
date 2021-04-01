import 'package:ejemplo_diseno/src/widget/icono_personalizado.dart';
import 'package:flutter/material.dart';

class ItemResumenDiario extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icono;
  final double sizeIcono;

  final String titulo;
  final String subTitulo;
  final double monto;

  const ItemResumenDiario(
      {Key key,
      this.size = 70,
      this.color = Colors.grey,
      this.icono = Icons.info,
      this.sizeIcono = 30.0,
      this.titulo = 'titulo',
      this.subTitulo = 'Subtitulo',
      this.monto = 00.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      child: Row(
        children: <Widget>[
          IconoPersonalizado(
            size: size,
            icono: icono,
            color: color,
            sizeIcono: sizeIcono,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                titulo,
                style: TextStyle(
                    color: Color(0xffA090E8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(subTitulo, style: TextStyle(color: Color(0xffA090E8)))
            ],
          ),
          Spacer(),
          Text(
            '$monto \$ ',
            style: TextStyle(
                color: Color(0xffA090E8),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
