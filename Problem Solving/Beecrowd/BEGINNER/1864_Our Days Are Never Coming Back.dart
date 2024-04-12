import 'dart:io';

void main(){
  int N=int.parse(stdin.readLineSync()!);
  String quote="LIFE IS NOT A PROBLEM TO BE SOLVED";
  for(int i=0;i<N;i++){
    stdout.write(quote[i]);
  }
  print("");
}