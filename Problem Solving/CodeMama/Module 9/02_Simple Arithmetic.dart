import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(" ");
  int number1 = int.parse(input[0]);
  int number2 = int.parse(input[2]);
  if (input[1] == "+")
    print(number1 + number2);
  else if (input[1] == "-")
    print(number1 - number2);
  else if (input[1] == "*")
    print(number1 * number2);
  else if (input[1] == "/") 
    print(number1 ~/ number2);
}
