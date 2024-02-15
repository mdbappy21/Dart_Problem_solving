import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    int n = int.parse(stdin.readLineSync()!);
    if (n % 2 == 0)
      print("0");
    else
      print("1");
  }
}
