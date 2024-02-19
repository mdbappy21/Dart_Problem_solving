import 'dart:io';
import 'dart:math';

void main() {
  double x1, y1, x2, y2, v, r1, r2, X, Y, dstnce, range;
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input == "EOF") break;

    List<String> array = input.split(" ");
    x1 = double.parse(array[0]);
    y1 = double.parse(array[1]);
    x2 = double.parse(array[2]);
    y2 = double.parse(array[3]);
    v = double.parse(array[4]);
    r1 = double.parse(array[5]);
    r2 = double.parse(array[6]);

    X = (x2 - x1) * (x2 - x1);
    Y = (y2 - y1) * (y2 - y1);
    dstnce = sqrt(X + Y);
    dstnce += v * 1.50;
    range = r1 + r2;
    if (dstnce > range)
      print("N");
    else
      print("Y");
  }
}
