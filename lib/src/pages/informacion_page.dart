import 'package:ejemplo_diseno/src/widget/info_user_appbar.dart';
import 'package:flutter/material.dart';

class InformacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [InfoUserAppBar()],
    ));
  }
}
