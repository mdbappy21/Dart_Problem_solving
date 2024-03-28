import 'dart:io';

void main(){
  List<int> input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int n=input[0]+2;
  int x=input[1];
  double result=x/n;
  print(result.toStringAsFixed(2));
}