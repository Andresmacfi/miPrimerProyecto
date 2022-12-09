import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});
  //const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MI app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  //Inicio({ Key key}) : super(key: key);
  const Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: const Text(" holA "),
      //),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/portals_3/2x1_SuperMarioHub_image1600w.jpg"),
          fit: BoxFit.cover),
    ),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [nombre(), campoUsuario(), contrasena(), botonEntrar()],
    )),
  );
}

Widget campoUsuario() {
  // ignore: prefer_const_constructors
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      decoration: const InputDecoration(
        hintText: "user",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget nombre() {
  return const Text(
    " Hola Andres",
    style: TextStyle(
        color: Color.fromARGB(230, 81, 33, 136),
        fontSize: 35.0,
        fontWeight: FontWeight.bold),
  );
}

Widget contrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "contraseña",
        fillColor: Color.fromARGB(255, 172, 52, 52),
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return FloatingActionButton(
    onPressed: () {},
    child: Text("oprime"),
  );
}
