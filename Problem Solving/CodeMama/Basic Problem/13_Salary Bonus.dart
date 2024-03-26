import 'dart:io';

void main(){
  double salary=double.parse(stdin.readLineSync()!);
  int bonus=salary*10~/100;
  print(bonus);
}