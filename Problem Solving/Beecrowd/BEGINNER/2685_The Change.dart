import 'dart:io';

void main() {
  int x;
  while (true) {
    String? degree = stdin.readLineSync();
    if (degree == null) break;
    x = int.tryParse(degree) ?? -1;
    if (x == -1) break;
    x %= 360;
    if (x < 90 && x >= 0)
      print("Bom Dia!!");
    else if (x >= 90 && x < 180)
      print("Boa Tarde!!");
    else if (x >= 180 && x < 270)
      print("Boa Noite!!");
    else if (x >= 270 && x < 360) print("De Madrugada!!");
  }
}
