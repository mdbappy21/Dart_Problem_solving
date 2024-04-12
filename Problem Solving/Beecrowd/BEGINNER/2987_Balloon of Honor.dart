import 'dart:io';

void main(){
  String c=stdin.readLineSync()!;
  int result=c.codeUnitAt(0)-64;
  print(result);
}