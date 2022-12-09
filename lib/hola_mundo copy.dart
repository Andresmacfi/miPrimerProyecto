import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});
  //const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(
        title: Text(" holA"),
      ),
      body: Center(
        child: Text("contenido "),
      ),
    );
  }
}
