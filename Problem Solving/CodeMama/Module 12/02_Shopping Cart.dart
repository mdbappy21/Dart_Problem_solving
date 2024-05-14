import 'dart:io';

void main(){
  List<Map<String,int>> cart=[
    {"Product Id":101,"Price":10},
    {"Product Id":202,"Price":25},
    {"Product Id":303,"Price":5},
  ];
  List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();

  int totalAmount=0;

  for(int i=0;i<3;i++){
    if(input[0]==cart[i]["Product Id"]){
      totalAmount=(cart[i]["Price"]!*input[1]);
      break;
    }
  }
  print("$totalAmount");

}