import 'dart:io';

void main(){
  List<String>input=stdin.readLineSync()!.split(" ");
  int N=int.parse(input[0]);
  int L=int.parse(input[1]);
  print(N*L);
}