import 'dart:io';

void main(){
  int n,x,result=0;
  List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  n=input[0];
  x=input[1];
  for(int i=1;i<n;i++){
    result+=i;
  }
  result+=n*x;
  print(result);
}
