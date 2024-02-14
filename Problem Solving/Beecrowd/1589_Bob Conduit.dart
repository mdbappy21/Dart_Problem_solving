import 'dart:io';

void main(){
  int r1,r2,r,t;
  t=int.parse(stdin.readLineSync()!);
  for(int i=0;i<t;i++){
    List<String>inputs=stdin.readLineSync()!.split(" ");
    r1=int.parse(inputs[0]);
    r2=int.parse(inputs[1]);
    r=r1+r2;
    print(r);
  }
}