import 'dart:io';

void main() {
  while (true) {
    String? number = stdin.readLineSync();
    if (number == null || number == "EOF")
      break;
    else {
      int result = int.parse(number);
      print(result - 1);
    }
  }
}
