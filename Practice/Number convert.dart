import 'dart:io';

void main() {
  int number=int.parse(stdin.readLineSync()!);
  String hexString = number.toRadixString(16).toUpperCase(); //place 2,8,10,16 to RadixString function 
  print(hexString);
}
