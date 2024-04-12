import 'dart:io';

void main(){
  List<String>number=stdin.readLineSync()!.split(" ");
  List<int>numbers=[];
  numbers.add(int.parse(number[0]));
  numbers.add(int.parse(number[1]));
  numbers.add(int.parse(number[2]));
  numbers.add(int.parse(number[3]));

  int sum=numbers[0]+numbers[1]+numbers[2]+numbers[3]-3;
  print(sum);
}