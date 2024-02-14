import 'dart:io';
import 'dart:math';

void main(){
  int number,exponent,result;
  stdout.write("Enter a number : ");
  number=int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Exponent : ");
  exponent=int.parse(stdin.readLineSync()!);
  result =pow(number,exponent).toInt();
  print(result);
}

