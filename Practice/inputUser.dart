import 'dart:io';

void main(){
 // print("Enter your Name : ");//with line break.
  stdout.write("Enter your name : ");//without line break.
  String? name=stdin.readLineSync();//take input.?use for null safety.
  print("Your name is :$name");//$ use for printing variable.
}