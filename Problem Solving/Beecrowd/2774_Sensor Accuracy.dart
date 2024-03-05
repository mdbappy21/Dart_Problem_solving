import 'dart:math';
import 'dart:io';

double precisao(int qt, List<double> lista, double media) {
  double somatorio = 0;
  for (int caso = 0; caso < qt; ++caso) {
    somatorio += pow(lista[caso] - media, 2);
  }
  double resultado = sqrt(somatorio / (qt - 1));
  return resultado;
}

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null) break;
    List<String> parts = line.split(' ');
    int h = int.parse(parts[0]);
    int m = int.parse(parts[1]);
    List<double> medidas = [];
    String? line2 = stdin.readLineSync();
    if (line2 == null) break;
    List<double> l = line2.split(" ").map(double.parse).toList();
    for (int i = 0; i < h * 60 ~/ m; ++i) {
      medidas.add(l[i]);
    }
    double media = medidas.reduce((a, b) => a + b) / medidas.length;
    double resultado = precisao(medidas.length, medidas, media);
    print(resultado.toStringAsFixed(5));
  }
}
