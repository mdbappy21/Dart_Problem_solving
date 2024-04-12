import 'dart:io';

void main(){
  int input=int.parse(stdin.readLineSync()!);
  stdout.write("Feliz nat");
  for(int i=0;i<input;i++){
    stdout.write("a");
  }
  stdout.write("l!\n");
}