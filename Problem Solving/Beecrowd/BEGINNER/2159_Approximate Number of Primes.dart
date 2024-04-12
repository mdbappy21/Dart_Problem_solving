import 'dart:io';
import 'dart:math';

void main() {
  double n, ans1, ans2;
  n = double.parse(stdin.readLineSync()!);

  ans1 = n / log(n);
  ans2 = 1.25506 * (n / log(n));

  print('${ans1.toStringAsFixed(1)} ${ans2.toStringAsFixed(1)}');
}
