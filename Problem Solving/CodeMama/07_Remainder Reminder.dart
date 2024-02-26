import 'dart:io';

void main(){
  List<int>number=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int remainder=number[0]%number[1];
  print(remainder);
}