import 'dart:io';

void main(){
  List<int>number=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  print(number[0]-number[1]);
}