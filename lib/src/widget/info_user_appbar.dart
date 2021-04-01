import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoUserAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      child: SafeArea(
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
            Positioned(
              top: 30.0,
              child: Container(
                height: 120,
                width: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image(
                      image: AssetImage('assets/avatar.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CirculoEnLinea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
      ),
      body: Container(),
    );
  }
}
