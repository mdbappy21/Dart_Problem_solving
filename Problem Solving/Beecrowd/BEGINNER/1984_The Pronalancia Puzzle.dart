import 'dart:io';

void main(){
  String number=stdin.readLineSync()!;
  String input=number.split('').reversed.join();
  print(input);
}