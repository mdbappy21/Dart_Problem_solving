import 'dart:io';

void main() {
  double x = 0.0;
  int n = int.parse(stdin.readLineSync()!);

  if (n == 1) {
    x = 0.1666666667;
  }

  if (n == 0) {
    x = 0.0000000000;
  }

  for (int i = 2; i <= n; i++) {
    if (i == 2) {
      x = 6.0 + (1.00 / 6.00);
      x = 1.0 / x;
    } else {
      x = 6.00 + x;
      x = 1.0 / x;
    }
  }

  x = x + 3.00;
  print(x.toStringAsFixed(10));
}
