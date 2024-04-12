import 'dart:io';

void main() {
  int a, b, resto;

  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);

  resto = a % b;

  print(resto);
}
