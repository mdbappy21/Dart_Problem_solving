import 'dart:io';

void main() {
  int L, C, lajes1, lajes2;
  C = int.parse(stdin.readLineSync()!);
  L = int.parse(stdin.readLineSync()!);
  lajes1 = (L * C) + ((L - 1) * (C - 1));
  lajes2 = ((L - 1) * 2) + ((C - 1) * 2);
  print(lajes1);
  print(lajes2);
}
