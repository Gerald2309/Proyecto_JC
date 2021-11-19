import 'package:flutter/material.dart';
import 'package:proyecto_final_jovenes_creativos/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {'home': (BuildContext context) => HomePage()});
  }
}
