import 'dart:io';

void main() {
  //prosedure 1
  stdout.write("Enter a double Number : ");
  double number = double.parse(stdin.readLineSync()!);
  double fraction = (number - number.truncate()) * 10000;
  stdout.write("The Fraction part is : ");
  print(fraction.toStringAsFixed(0)); //printing 4 decimal place.

//procedure 2
  stdout.write("Enter 2nd double number : ");
  List<String> number2 = stdin.readLineSync()!.split(".");
  print(number2[1]);
//procedure 3
  stdout.write("Enter 3rd double number : ");
  double number3 = double.parse(stdin.readLineSync()!);
  int s = number3.floor();
  double fraction1 = (number3 - s) * 10000;
  print(fraction1.toStringAsFixed(0));
}
