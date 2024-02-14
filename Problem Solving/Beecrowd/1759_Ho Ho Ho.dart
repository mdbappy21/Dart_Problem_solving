import 'dart:io';

void main(){
  int ho;
  ho=int.parse(stdin.readLineSync()!);
  for(int i=1;i<ho;i++){
    stdout.write("Ho ");
  }
  if(ho!=0)
  print("Ho!");
}