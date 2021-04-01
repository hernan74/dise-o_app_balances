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
              _CrearCirculo(
                size: size,
                color: color.withOpacity(0.2),
              ),
              _CrearCirculo(
                size: size * 0.85,
                color: Color(0xff2D1698),
              ),
              _CrearCirculo(
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

class _CrearCirculo extends StatelessWidget {
  final double size;
  final Color color;

  const _CrearCirculo({Key key, this.size, this.color}) : super(key: key);
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
