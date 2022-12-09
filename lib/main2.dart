import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const DiarioApp());
}

class DiarioApp extends StatefulWidget {
  //const DiarioApp({super.key});
  const DiarioApp({Key? key}) : super(key: key);

  @override
  State<DiarioApp> createState() => _DiarioAppState();
}

class _DiarioAppState extends State<DiarioApp> {
  var useLihgtMode = false;
  int colorSelected = 5;
  // ignore: non_constant_identifier_names
  Color ColorScheme = Colors.green;

  void onColorSelected(int value) {
    setState(() {
      colorSelected = value;
      ColorScheme = colorOptions[colorSelected];
    });
  }

  void onLightMode() {
    setState(() {
      useLihgtMode = !useLihgtMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: ColorScheme,
        brightness: useLihgtMode ? Brightness.light : Brightness.dark,
      ),
      title: "mision tic",
      home: const LoginPage(),
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => HomePage(
              onLightMode: onLightMode,
              onSelectedColor: onColorSelected,
              useLightMode: useLihgtMode,
              colorSelected: colorSelected,
              colorScheme: ColorScheme,
            ),
      },
    );
  }
}
