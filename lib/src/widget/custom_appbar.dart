
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CrearAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.bars,
            size: 30,
            color: Color(0xffBEB0F9),
          ),
          Spacer(),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/avatar.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xffE5C268),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
