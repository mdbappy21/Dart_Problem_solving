import 'dart:io';

void main() {
  List<String> number = stdin.readLineSync()!.split(" ");
  int max = int.parse(number[0]);
  int num2 = int.parse(number[1]);
  if (max < num2) max = num2;
  print(max);
}
