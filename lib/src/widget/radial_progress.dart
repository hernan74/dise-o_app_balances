import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final double porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;
  final double size;
  final bool muestraTextoPorcentaje;

  RadialProgress(
      {@required this.porcentaje,
      this.colorPrimario = Colors.blue,
      this.colorSecundario = Colors.grey,
      this.grosorPrimario = 10,
      this.grosorSecundario = 4,
      this.size = 100,
      this.muestraTextoPorcentaje = false});

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> porcentaje;

  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));

    porcentaje = Tween(begin: 0.0, end: widget.porcentaje).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            if (widget.muestraTextoPorcentaje)
              Text(
                '${porcentaje.value.truncate()} % ',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            Container(
              padding: EdgeInsets.all(10),
              width: widget.size,
              height: widget.size,
              child: CustomPaint(
                painter: _MiRadialProgress(
                    porcentaje.value,
                    widget.colorPrimario,
                    widget.colorSecundario,
                    widget.grosorPrimario,
                    widget.grosorSecundario),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  _MiRadialProgress(this.porcentaje, this.colorPrimario, this.colorSecundario,
      this.grosorPrimario, this.grosorSecundario);

  @override
  void paint(Canvas canvas, Size size) {
    // Circulo completado
    final paint = new Paint()
      ..strokeWidth = grosorSecundario
      ..color = colorSecundario
      ..style = PaintingStyle.stroke;

    final center = new Offset(size.width * 0.5, size.height / 2);
    final radio = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);

    // Arco
    final paintArco = new Paint()
      ..strokeWidth = grosorPrimario
      ..color = colorPrimario
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // Parte que se deberá ir llenando
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
