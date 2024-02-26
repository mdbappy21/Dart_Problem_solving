import 'dart:io';

void main(){
  List<int>Number=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  Number.sort();
  print(Number[0]);
}