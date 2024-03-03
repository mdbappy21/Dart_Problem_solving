import 'dart:io';

void main(){
  List<String>input=stdin.readLineSync()!.split(RegExp(r'[.-]'));
  print(input[0]);
  print(input[1]);
  print(input[2]);
  print(input[3]);
}
