import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Data',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Escoga una opcion',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                _createTable(),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: _createBottomNavigationBar(),
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.white12, Colors.deepOrange])));

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Form()));
        },
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [Color(0xffBD6AF7), Color(0xffDDB5F9)])),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(top: 100, left: 100, child: pinkBox)
      ],
    );
  }

  /*
  Widget _createBottomNavigationBar() {
    return Theme(
      data: Theme.of(context).copyWith(

          ///canvasColor: Color.fromRGBO(90, 187, 155, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.white))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Second page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), label: 'Third page')
        ],
       
      ),
    );
  }*/

  _createTable() {
    return Table(
      children: [
        TableRow(children: [
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana Hernandez',
              'Calle 56hg ',
              '03/05/2000',
              '300.000',
              '08/09/2018'),
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://0.soompi.io/wp-content/uploads/sites/8/2018/03/08235330/Lee-Jong-Suk.jpg?s=900x600&e=t'),
              'Franco Bolivar',
              '',
              '',
              '',
              ''),
        ]),
        TableRow(children: [
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
        ]),
        TableRow(children: [
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
        ]),
        TableRow(children: [
          _createItemTable(
              Colors.white60,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
          _createItemTable(
              Colors.white,
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana',
              '',
              '',
              '',
              ''),
        ])
      ],
    );
  }

  Widget _createItemTable(Color color, NetworkImage image, String text,
      String adress, String nacimiento, String salario, String Ingreso) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Form()));
          },
          child: Container(
            height: 200.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: image,
                  radius: 25.0,
                ),
                Text(
                  text,
                ),
                Text(adress),
                Text(nacimiento),
                Text(salario),
                Text(Ingreso)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fomulario'),
      ),
    );
  }
}
