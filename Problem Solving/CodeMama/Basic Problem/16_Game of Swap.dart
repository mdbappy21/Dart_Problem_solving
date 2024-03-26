import 'dart:io';

void main(){
  List<int>numbers=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int frist=numbers[0];
  int second=numbers[1];
  print("Before swapping: num1 = $frist, num2 = $second");
  int temp=frist;
  frist=second;
  second=temp;
  print("After swapping: num1 = $frist, num2 = $second");
}