import 'dart:io';

void main(){
  String input=stdin.readLineSync()!;
  List<String>inputList=input.split(" ");
  int n=int.tryParse(inputList[0])??1;
  int a=int.tryParse(inputList[1])??0;
  int b=int.tryParse(inputList[2])??0;
  if(n>=a+b){
    print("Yes");
  }else{
    print("No");
  }
}
