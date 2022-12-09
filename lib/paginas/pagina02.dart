import 'package:flutter/material.dart';

class pagina02 extends StatelessWidget {
  const pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terminos y condiciones "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Terminos y condiciones",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "para usar esta alicaciones es necesario que hacepte terminios para hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosvnecesario que hacepte terminios terminiosvnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios terminiosnecesario que hacepte terminios ",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Acepto todo"), Icon(Icons.arrow_forward_ios)],
              ),
              onPressed: () => {Navigator.pop(context)},
            )
          ],
        ),
      ),
    );
  }
}
