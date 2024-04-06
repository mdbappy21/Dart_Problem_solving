import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int totalBlock = n * n;
  int black = totalBlock ~/ 2;
  int white = totalBlock - black;
  print("$white casas brancas e $black casas pretas");
}
