import 'package:ejemplo_diseno/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconoPersonalizado extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icono;
  final double sizeIcono;

  const IconoPersonalizado({
    Key key,
    this.size = 20,
    this.color = Colors.grey,
    this.icono = Icons.info,
    this.sizeIcono = 30.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CrearCirculo(
                size: size,
                color: color.withOpacity(0.2),
              ),
              CrearCirculo(
                size: size * 0.85,
                color: Color(0xff2D1698),
              ),
              CrearCirculo(
                size: size * 0.68,
                color: color.withOpacity(0.2),
              ),
              FaIcon(
                icono,
                color: color,
                size: sizeIcono,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
