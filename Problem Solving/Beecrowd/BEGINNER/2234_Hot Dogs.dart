import 'dart:io';

void main()
{
    List<double>MP=stdin.readLineSync()!.split(" ").map(double.parse).toList();
    double result=MP[0]/MP[1];
    print(result.toStringAsFixed(2));
}