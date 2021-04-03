import 'package:ejemplo_diseno/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoUserAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        children: <Widget>[
          _CrearAppBar(),
        ],
      ),
    );
  }
}

class _CrearAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 30,
            child: FaIcon(
              FontAwesomeIcons.bars,
              size: 30,
              color: Color(0xffBEB0F9),
            ),
          ),
          Positioned(
            right: 0,
            top: 30,
            child: FaIcon(
              Icons.more_horiz,
              size: 30,
              color: Color(0xffBEB0F9),
            ),
          ),
          Positioned(top: 25.0, child: _CrearCampoFotoUsuario()),
          Positioned(top: 180.0, child: _CrearCampoInfoUsuario()),
        ],
      ),
    );
  }
}

class _CrearCampoFotoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CrearCirculo(
        size: 160,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: CrearCirculo(
                size: 130,
                color: Color(0xff3C28A7),
              ),
            ),
            Positioned(
              child: Container(
                height: 120,
                width: 120,
                child: Hero(
                  tag: 'fotoUsuario',
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image(
                        image: AssetImage('assets/avatar.jpg'),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              right: 25,
              child: CrearCirculo(
                size: 23,
                color: Color(0xff3C28A7),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: CrearCirculo(
                size: 13,
                color: Color(0xffEEC076),
              ),
            ),
          ],
        ));
  }
}

class _CrearCampoInfoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Stan Lee',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Manhattan, NY',
          style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 16),
        ),
      ],
    );
  }
}
