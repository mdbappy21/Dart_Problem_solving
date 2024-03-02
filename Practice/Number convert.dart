import 'dart:io';

void main() {
  stdout.write("Enter the number in decimal : ");
  int number=int.parse(stdin.readLineSync()!);
  stdout.write("Enter the base to convert : ");
  String hexString = number.toRadixString(int.parse(stdin.readLineSync()!)).toUpperCase(); //place 2,8,10,16 to RadixString function 
  print(hexString);
}
