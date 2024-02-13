import 'dart:io';

void main() {
  // print("Enter your Name : ");//with line break.
  stdout.write("Enter your name : "); //without line break.
  String? name = stdin.readLineSync(); //take input.?use for null safety.
  print("Your name is :$name"); //$ use for printing variable.

  print("Enter two name that seperated by space");
  List<String> inputs =stdin.readLineSync().split(' '); //two input seperated by Space
  String Sheldon = inputs[0];
  String Raj = inputs[1];
  print("Sheldon :$Sheldon    Raj: $Raj");
}
