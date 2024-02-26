import 'dart:io';
import 'dart:math';

void main(){
  List<double>x1=stdin.readLineSync()!.split(" ").map(double.parse).toList();
  List<double>x2=stdin.readLineSync()!.split(" ").map(double.parse).toList();
  double d=pow((x1[0]-x2[0]),2)+pow((x1[1]-x2[1]),2).toDouble();
  var distance=pow(d, 0.5);
  print("Distance: ${distance.toStringAsFixed(2)}");
}