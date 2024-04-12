import 'dart:io';

void main(){
  List<int>ageOfNephew=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  if((ageOfNephew[0]>ageOfNephew[1] && ageOfNephew[0]<ageOfNephew[2]) ||(ageOfNephew[0]<ageOfNephew[1] && ageOfNephew[0]>ageOfNephew[2]))
  print("huguinho");
  else if((ageOfNephew[1]>ageOfNephew[2] && ageOfNephew[1]<ageOfNephew[0]) ||(ageOfNephew[1]<ageOfNephew[2] && ageOfNephew[1]>ageOfNephew[0]))
  print("zezinho");
  else print("luisinho");
}