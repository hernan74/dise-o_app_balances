import 'package:ejemplo_diseno/src/widget/info_user_appbar.dart';
import 'package:ejemplo_diseno/src/widget/item_resumen_gastos.dart';
import 'package:ejemplo_diseno/src/widget/linea_color.dart';
import 'package:ejemplo_diseno/src/widget/total_balance.dart';
import 'package:flutter/material.dart';

class InformacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
      child: Column(
        children: [InfoUserAppBar(), _PanelContenido()],
      ),
    ));
  }
}

class _PanelContenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 540,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 520,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
          ),
          Positioned(bottom: -5, child: _BottonAgregar()),
          Positioned(
              top: 30,
              child: TotalBalance(
                total: 21500.09,
                subtitulo: 'Total Balance',
              )),
          Positioned(
              top: 150,
              child: LineaColor(
                ancho: 300,
                color: Colors.grey.shade300,
              )),
          Positioned(
              top: 140,
              child: Container(
                width: 300,
                height: 330,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ItemResumenGasto(
                      porcentaje: 76.0,
                      colorPrimario: Color(0xff2668DE),
                      titulo: 'Item for',
                      subtitulo: 'home',
                      monto1: 1200,
                      monto2: 2000,
                    ),
                    ItemResumenGasto(
                      porcentaje: 15.0,
                      colorPrimario: Color(0xffEDD433),
                      titulo: 'Cars',
                      subtitulo: 'cost',
                      monto1: 400,
                      monto2: 1600,
                    ),
                    ItemResumenGasto(
                      porcentaje: 50.0,
                      colorPrimario: Color(0xffE43362),
                      titulo: 'Food',
                      subtitulo: 'cost',
                      monto1: 60,
                      monto2: 1800,
                    ),
                  ],
                ),
              )),
          Positioned(top: 110, child: _CrearLineasBalance()),
        ],
      ),
    );
  }
}

class _CrearLineasBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LineaColor(
          ancho: 300,
          alto: 10,
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
          delayAnimacion: 0.5,
        ),
        LineaColor(
          ancho: 220,
          alto: 10,
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
          color: Color(0xffE43362),
          delayAnimacion: 0.5,
        ),
        LineaColor(
          ancho: 170,
          alto: 10,
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
          color: Color(0xffEDD433),
          delayAnimacion: 0.5,
        ),
        LineaColor(
          ancho: 110,
          alto: 10,
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
          color: Color(0xff2668DE),
          delayAnimacion: 0.5,
        )
      ],
    );
  }
}

class _BottonAgregar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff3C29CB)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.add_circle_outline),
            SizedBox(
              width: 18,
            ),
            Text(
              'Add',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
