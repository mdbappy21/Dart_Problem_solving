import 'dart:io';

void main() {
  while (true) {
    String V = stdin.readLineSync()!;
    if (V.isEmpty ||V=="EOF") {
      break;
    } else {
      double v = double.parse(V);
      double d = double.parse(stdin.readLineSync()!);
      double r = d / 2;
      double area = 3.14 * r * r;
      double height = v / area;
      String h = height.toStringAsFixed(2);
      String a = area.toStringAsFixed(2);
      print("ALTURA = $h");
      print("AREA = $a");
    }
  }
}
