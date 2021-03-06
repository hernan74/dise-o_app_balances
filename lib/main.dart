import 'package:ejemplo_diseno/src/pages/home_page.dart';
import 'package:ejemplo_diseno/src/pages/informacion_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Titulo',
      theme: _miTema(),
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        'informacion': (_) => InformacionPage(),
      },
    );
  }
}

ThemeData _miTema() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xff2D1698),
    appBarTheme: AppBarTheme(backgroundColor: Color(0xff2D1698), elevation: 0),
  );
}
