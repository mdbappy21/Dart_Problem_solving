import 'dart:io';

void main() {
  int A, M;
  A = int.parse(stdin.readLineSync()!);
  M = int.parse(stdin.readLineSync()!);
  int result = M * 2 - A;
  print(result);
}
