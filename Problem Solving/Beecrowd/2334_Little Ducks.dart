import 'dart:io';

void main() {
  while (true) {
    String input = stdin.readLineSync()!;
    double n = double.parse(input);

    if (n == -1) {
      break;
    } else if (n == 0) {
      print("0");
    } else {
      n = n - 1;
      print("${n.toStringAsFixed(0)}");
    }
  }
}
