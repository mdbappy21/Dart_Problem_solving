import 'dart:io';

void main(){
  List<int>rectangle=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int area=rectangle[0]*rectangle[1];
  print(area);
}