import 'dart:io';

void main() {
  double x = 0.0;
  int n = int.parse(stdin.readLineSync()!);

  if (n == 1)
    x = 0.5;
  if (n == 0) x = 0.0;

  for (int i = 2; i <= n; i++) {
    if (i == 2) {
      x = 2.0 + 0.5;
      x = 1.0 / x;
    } else {
      x = 2.0 + x;
      x = 1.0 / x;
    }
  }
  x = x + 1.00;
  print(x.toStringAsFixed(10));
}
