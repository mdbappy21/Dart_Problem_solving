import 'dart:io';

void main() {
  while (true) {
    String? test = stdin.readLineSync();
    if (test == null) break;
    int t = int.parse(test);
    double ti = 100.0;
    double result;
    for (int i = 0; i < t; ++i) {
      result = double.parse(stdin.readLineSync()!);
      if (result < ti) ti = result;
    }
    print('${ti.toStringAsFixed(2)}');
  }
}
