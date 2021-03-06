import 'package:flutter/material.dart';
import 'package:proyecto_final_jovenes_creativos/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {'home': (BuildContext context) => HomePage()});
  }
}
