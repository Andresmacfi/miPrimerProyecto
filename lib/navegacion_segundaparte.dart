import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Container(
              height: 64,
              color: Color.fromARGB(255, 231, 128, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu),
                  Text("Diario",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      )),
                  Icon(//Icons.account_circle
                      Icons.safety_check),
                ],
              ),
            ),
            const Text(
              "Mis Notas",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 32,
              ),
            )
          ],
        ),
      )));
}
