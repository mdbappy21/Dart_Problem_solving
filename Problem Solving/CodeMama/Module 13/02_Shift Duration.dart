import 'dart:io';

void main(){
  List<int>time=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int duration=time[1]-time[0];
  if(duration<=0){
    duration+=24;
  }
  print(duration);
}