import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.blueGrey,
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
      padding: const EdgeInsets.all(30),
      child: const Text("holllla mundo, empieza a programar",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Color.fromARGB(255, 66, 54, 17),
            fontSize: 20,
            // backgroundColor: Colors.white,
          )),
    ),
  );
}
