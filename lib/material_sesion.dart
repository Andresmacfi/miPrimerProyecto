import 'package:flutter/material.dart';

void main() {
  runApp(DiarioApp());
}

class DiarioApp extends StatelessWidget {
  const DiarioApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " mision tic ",
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              ("Diario"),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 64,
                color: const Color.fromARGB(255, 35, 100, 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu),
                    Text("Diario",
                        style: TextStyle(color: Colors.black, fontSize: 32)),
                    Icon(Icons.account_circle),
                  ],
                ),
              ),
              const Text("Mis notas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ))
            ],
          )),
    );
  }
}
