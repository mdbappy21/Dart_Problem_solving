import 'dart:io';

void main(){
  List<String>tickets=stdin.readLineSync()!.split(" ");
  double A=double.parse(tickets[0]);
  double B=double.parse(tickets[1]);
  double diff=B-A;
  String result=((diff/A)*100).toStringAsFixed(2);
  print("$result%");
}