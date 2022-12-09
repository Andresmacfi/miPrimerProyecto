// ignore_for_file: avoid_print

void main() {
  int operacion1 = suma(10, 5);
  var operacion2 = resta(operacion1, 5);
  double operacion3 = dividir(operacion1, operacion2);
  print(operacion1);
  print(operacion2);
  print("la operacion ede dividir es : $operacion3");
}

int suma(int a, int b) {
  return a + b;
}

int resta(int A, int B) {
  return A - B;
}

double dividir(int d, int w) {
  return d / w;
}
