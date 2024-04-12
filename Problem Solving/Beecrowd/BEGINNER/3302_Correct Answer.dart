import 'dart:io';

void main(){
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    int question=int.parse(stdin.readLineSync()!);
    print("resposta $i: $question");
  }
}