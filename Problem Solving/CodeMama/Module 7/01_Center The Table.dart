import 'dart:io';

void main(){
  int width=int.parse(stdin.readLineSync()!);
  print(((width-300)~/2));
}