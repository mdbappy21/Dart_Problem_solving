import 'dart:io';

void main(){
  List<String> s=stdin.readLineSync()!.split("");
  int len=s.length;
  for(int i=2;i<len;i+=3){
    s.insert(i, "x");
    len++;
  }
  String result=s.join();
  print(result);
}