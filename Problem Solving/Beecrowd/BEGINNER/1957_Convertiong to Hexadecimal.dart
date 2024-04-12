import 'dart:io';

void main() {
  int number=int.parse(stdin.readLineSync()!);
  String hexString = number.toRadixString(16).toUpperCase();  
  print(hexString);
}
