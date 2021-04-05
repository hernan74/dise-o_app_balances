import 'package:ejemplo_diseno/src/pages/informacion_page.dart';
import 'package:ejemplo_diseno/src/widget/custom_appbar.dart';
import 'package:ejemplo_diseno/src/widget/item_resumen_diario.dart';
import 'package:ejemplo_diseno/src/widget/linea_color.dart';
import 'package:ejemplo_diseno/src/widget/total_balance.dart';
import 'package:ejemplo_diseno/src/widget/trancicion_pagina.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ejemplo_diseno/src/widget/cuadro_resumen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                  onTap: () => Navigator.push(
                      context, trancicionConvinada(InformacionPage())),
                  child: CrearAppBar()),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Dashboard',
                style: TextStyle(color: Color(0xffF1EBFF), fontSize: 60.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Overview look at your balance',
                  style: TextStyle(color: Color(0xffF1EBFF), fontSize: 18.0)),
              SizedBox(
                height: 30.0,
              ),
              _CrearCuadroBalance(),
              SizedBox(
                height: 40.0,
              ),
              _ResumenDiario()
            ],
          ),
        ),
      ),
    );
  }
}

class _CrearCuadroBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: CuadroBalanceResumen(
              ancho: 200.0,
              alto: 200.0,
              fondo: Color(0xff3E2CCC),
              bordeInferiorIzquierdo: 30,
              circulo: Color(0xff3C7CE3),
              monto: 300.90,
              titulo: 'This month\n income',
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CuadroBalanceResumen(
                ancho: 180.0,
                alto: 200.0,
                fondo: Color(0xff3328C5),
                circulo: Color(0xffE8C463),
                bordeInferiorDerecho: 30,
                bordeInferiorIzquierdo: 30,
                monto: 600.9,
                titulo: 'Spent\ntoday',
              )),
          _CuadroBalancePrincipal(
            total: 21500.09,
          ),
        ],
      ),
    );
  }
}

class _CuadroBalancePrincipal extends StatelessWidget {
  final double total;

  const _CuadroBalancePrincipal({this.total});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 183.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TotalBalance(
                total: total,
                subtitulo: 'Total balance',
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              _CrearLineaBalance(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    '\$3000.00',
                    style: TextStyle(
                        color: Color(0xff9D9B9E),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.handHoldingUsd,
                    color: Color(0xff9D9B9E),
                    size: 13,
                  ),
                  Text(
                    'Budget',
                    style: TextStyle(color: Color(0xff9D9B9E)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CrearLineaBalance extends StatelessWidget {
  const _CrearLineaBalance({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LineaColor(
          ancho: double.infinity,
          alto: 10,
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
        ),
        LineaColor(
          ancho: 170,
          alto: 10,
          color: Color(0xffE8C363),
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
        ),
        LineaColor(
          ancho: 110,
          alto: 10,
          color: Color(0xff37B9D2),
          bordeRedondoDerecho: 10,
          bordeRedondoIzquierdo: 10,
        )
      ],
    );
  }
}

class _ResumenDiario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Today',
            style: TextStyle(
                color: Color(0xffF1EBFF),
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ItemResumenDiario(
                icono: Icons.star,
                color: Color(0xff25B3E3),
                titulo: 'Item for home',
                subTitulo: 'Bought things home',
                monto: -40.90,
              ),
              SizedBox(
                height: 10,
              ),
              ItemResumenDiario(
                icono: FontAwesomeIcons.gift,
                color: Color(0xffA67C59),
                titulo: 'Gifts',
                subTitulo: 'For friends\'s birthday',
                monto: -120.00,
              ),
              SizedBox(
                height: 10,
              ),
              ItemResumenDiario(
                icono: FontAwesomeIcons.car,
                color: Color(0xffCB3761),
              ),
            ],
          ),
        )
      ],
    );
  }
}
