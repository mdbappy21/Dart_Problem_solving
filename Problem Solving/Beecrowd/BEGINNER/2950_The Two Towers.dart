import 'dart:io';

void main()
{
    List<double>NXY=stdin.readLineSync()!.split(" ").map(double.parse).toList();
    double n=NXY[0];
    double x=NXY[1];
    double y=NXY[2];
    double result=n/(x+y);
    print("${result.toStringAsFixed(2)}");
}