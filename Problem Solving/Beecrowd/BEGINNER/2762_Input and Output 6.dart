import 'dart:io';

void main() {
  int a,b;
  List<int>input=stdin.readLineSync()!.split(".").map(int.parse).toList();
  a=input[0];
  b=input[1];
	print("$b.$a");
}