import 'dart:io';

void main(){
  List<int> numbers =stdin.readLineSync()!.split(" ").map(int.parse).toList();
  numbers.sort();
  print(numbers[2]);
}