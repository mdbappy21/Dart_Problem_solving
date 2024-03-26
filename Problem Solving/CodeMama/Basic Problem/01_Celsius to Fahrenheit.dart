import 'dart:io';

void main(){
  double C=double.parse(stdin.readLineSync()!);
  double F=(C*1.8)+32;
  print("The temperature in Fahrenheit is: ${F.toStringAsFixed(2)}");
}