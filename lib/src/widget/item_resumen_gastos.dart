import 'package:ejemplo_diseno/src/widget/radial_progress.dart';
import 'package:flutter/material.dart';

class ItemResumenGasto extends StatelessWidget {
  final porcentaje;
  final Color colorPrimario;
  final String titulo;
  final String subtitulo;
  final double monto1;
  final double monto2;

  const ItemResumenGasto({
    Key key,
    @required this.porcentaje,
    this.colorPrimario = Colors.blue,
    this.titulo = 'Titulo',
    this.subtitulo = 'SubTitulo',
    this.monto1 = 0.0,
    this.monto2 = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: <Widget>[
          RadialProgress(
            porcentaje: porcentaje,
            grosorPrimario: 3,
            grosorSecundario: 3,
            colorPrimario: colorPrimario,
            colorSecundario: Colors.grey.withOpacity(0.3),
            size: 90,
            muestraTextoPorcentaje: true,
          ),
          _Contenido(
            titulo: titulo,
            subtitulo: subtitulo,
            monto1: monto1,
            monto2: monto2,
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 35,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class _Contenido extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final double monto1;
  final double monto2;

  const _Contenido(
      {Key key, this.titulo, this.subtitulo, this.monto1, this.monto2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          titulo,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 3,
        ),
        Text(subtitulo, style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 3,
        ),
        Text('$monto1 / $monto2 Usd',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ))
      ],
    );
  }
}
