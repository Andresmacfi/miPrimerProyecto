// ignore_for_file: avoid_print, dead_code

import 'dart:io';

void main() {
  print("Estas dentro, escribe algo ...");

  var color = stdin.readLineSync();

  switch (color) {
    case "amarillo":
      return print("escribiste un color");
      break;
    default:
      print(" no escribiste cosas congruentes ");
  }
}
