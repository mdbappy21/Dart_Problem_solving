import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input.isEmpty) break;

    double sum = 0;
    for (int i = input.length - 1, j = 0; i >= 0; i--, j++) {
      sum += (input.codeUnitAt(i) - 64) * pow(26, j);
    }

    if (sum <= 16384) {
      print(sum.toStringAsFixed(0));
    } else {
      print('Essa coluna nao existe Tobias!');
    }
  }
}
