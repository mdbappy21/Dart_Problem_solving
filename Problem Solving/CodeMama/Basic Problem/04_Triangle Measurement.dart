import 'dart:io';

void main(){
  List<int>tringle=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int base=tringle[0];
  int height=tringle[1];
  int result=height*base~/2;
  print(result);
}