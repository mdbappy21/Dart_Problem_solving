import 'dart:io';

void main(){
  int n=int.parse(stdin.readLineSync()!);
  List<String>s=stdin.readLineSync()!.split("");
  int count=0;
  for(int i=0;i<n-1;i++){
    if(s[i]==s[i+1]){
      count++;
    }
  }
  print(count);
}