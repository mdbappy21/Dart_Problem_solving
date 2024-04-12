import 'dart:io';

void main(){
  double input=double.parse(stdin.readLineSync()!);
  double result=6.28*input;
  print(result.toStringAsFixed(2));
}