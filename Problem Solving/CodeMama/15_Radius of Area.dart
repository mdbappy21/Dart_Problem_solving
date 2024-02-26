import 'dart:io';

void main(){
  double radius=double.parse(stdin.readLineSync()!);
  double area=3.14*radius*radius;
  print("The area of the circle is ${area.toStringAsFixed(2)} square units.");
}