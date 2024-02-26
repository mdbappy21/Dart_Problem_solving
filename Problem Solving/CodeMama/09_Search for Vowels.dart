import 'dart:io';

void main() {
  String line = stdin.readLineSync()!.toUpperCase();
  int len = line.length;
  int count = 0;
  for (int i = 0; i < len; i++) {
    if (line[i] == "A" ||
        line[i] == "E" ||
        line[i] == "I" ||
        line[i] == "O" ||
        line[i] == "U") {
      print("The string contains a vowel.");
      count=0;
      break;
    } else
      count = 1;
  }
  if (count == 1) print("The string does not contain any vowel.");
}
