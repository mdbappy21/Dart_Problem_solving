import 'dart:io';

void main() {
  int m, a, b, x;
  m = int.parse(stdin.readLineSync()!);
  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);
  x = m - a - b;

  if (x > a && x > b)
    print(x);
  else if (a > b && a > x)
    print(a);
  else
    print(b);
}
