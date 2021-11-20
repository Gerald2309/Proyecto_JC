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
                AppBar(
                  title: Text('Jóvenes Creativos'),
                  iconTheme: IconThemeData(color: Colors.amber),
                ),
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Señor usuario: a continuación verá información básica sobre los empleados de Jóvenes Creativos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                _createTable(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Form()));
                  },
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                        'https://doprod-statics.s3.amazonaws.com/pictures/logo/3755/large_14ae837c-5afb-453b-bdc3-2ca421680d49.pngs'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.white12, Colors.deepOrange])));

    final pinkBox = Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xffF763A8), Color(0xff6372F7)])),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(top: 100, left: 100, child: pinkBox)
      ],
    );
  }

  _createTable() {
    return Table(
      children: [
        TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tatiana()));
            },
            child: _createItemTable(
                NetworkImage(
                    'https://media.vogue.mx/photos/5cf2a0861f70812f0d7f5cb7/master/w_1600%2Cc_limit/GettyImages-1148090884.jpg'),
                'Mariana García',
                'Cr.8a # 15-63',
                '03/02/2002',
                '3.000.000',
                '22/02/2020'),
          ),
          _createItemTable(
              NetworkImage(
                  'https://0.soompi.io/wp-content/uploads/sites/8/2018/03/08235330/Lee-Jong-Suk.jpg?s=900x600&e=t'),
              'Franco Bolivar',
              'Carrera 3 # 18‑ 45',
              '05/05/1987',
              '1.300.000',
              '03/04/2009'),
        ]),
        TableRow(children: [
          _createItemTable(
              NetworkImage(
                  'http://www.sopitas.com/site/wp-content/uploads/2015/03/archetypal-female-_3249633c.jpg'),
              'Marcela Valle',
              'Calle 11 No. 4 - 14',
              '23/09/1997',
              '2.500.00',
              '18/09/2017'),
          _createItemTable(
              NetworkImage(
                  'https://image.shutterstock.com/image-photo/portrait-cheerful-man-smiling-camera-260nw-1478224751.jpg'),
              'Juan Rodríguez',
              'Av. Echeverri No. 6C-09',
              '25/08/1996',
              '908.750',
              '30/07/2021'),
        ]),
        TableRow(children: [
          _createItemTable(
              NetworkImage(
                  'https://s1.eestatic.com/2021/06/14/bluper/588953412_190243695_1024x576.jpg'),
              'Tatiana Hernandez',
              'Calle 56hg ',
              '03/05/2000',
              '1.300.000',
              '08/09/2018'),
          _createItemTable(
              NetworkImage(
                  'https://r3.abcimg.es/resizer/resizer.php?imagen=https://sevilla.abc.es/estilo/bulevarsur/wp-content/uploads/sites/14/2018/09/cortes-pelo-cara-redonda-long-bob.jpg&nuevoancho=&medio=abc.sevilla'),
              'Juanita Lopez',
              'Cr.6 # 17-12',
              '21/04/1991',
              '3.000.000',
              '09/11/2005'),
        ]),
      ],
    );
  }

  Widget _createItemTable(NetworkImage image, String text, String adress,
      String nacimiento, String salario, String Ingreso) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: 215.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(20)),
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
    );
  }
}

class Form extends StatefulWidget {
  Form({Key? key, Column? child}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Crea un widget Form usando el _formKey que creamos anteriormente
    return Form(
      //1 Form como raiz de nuestro formulario
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _emailInput(), //2
          //2
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ), //2
        ],
      ),
    );
  }

  _emailInput() {
    return TextFormField(
        decoration: const InputDecoration(
      icon: Icon(Icons.email),
      hintText: 'Inserte su email',
      labelText: 'Email',
    ));
  }
}

/*
 Widget _passwordInput() {
    return TextFormField(
        decoration: const InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'Inserte su contraseña',
          labelText: 'Contraseña',
        ),
        validator: (value) => _validatorPassword(value));


  _loginButton() {}
}
*/
class Tatiana extends StatefulWidget {
  Tatiana({Key? key}) : super(key: key);

  @override
  _TatianaState createState() => _TatianaState();
}

class _TatianaState extends State<Tatiana> {
  final List<Widget> items = List.generate(
      1,
      (i) => Container(
            width: double.infinity,
            height: 150,
            color: Colors.amber.shade50,
            child: Text('.     Mariana'),
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('Mariana info'),
            expandedHeight: 160,
            flexibleSpace: Image.network(
              'https://media.vogue.mx/photos/5cf2a0861f70812f0d7f5cb7/master/w_1600%2Cc_limit/GettyImages-1148090884.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(items))
        ],
      ),
    );
  }
}
