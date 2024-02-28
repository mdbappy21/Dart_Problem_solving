import 'dart:io';

void main() {
  double y, x;

  while (true) {
    String? degree = stdin.readLineSync();
    if (degree == null) break;
    y = double.tryParse(degree) ?? -1;
    if (y == -1) break;

    x = y;
    int horas = ((y * 240) ~/ 3600) % 60;
    int minutos = ((y * 240) ~/ 60) % 60;
    int segundos = (y * 240).toInt() % 60;

    if (x >= 0 && x < 90 || x == 360)
      print(
          "Bom Dia!!\n${((horas + 6) % 24).toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}");
    else if (x >= 90 && x < 180)
      print(
          "Boa Tarde!!\n${((horas + 6) % 24).toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}");
    else if (x >= 180 && x < 270)
      print(
          "Boa Noite!!\n${((horas + 6) % 24).toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}");
    else if (x >= 270 && x < 360)
      print(
          "De Madrugada!!\n${((horas + 6) % 24).toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}");
  }
}
