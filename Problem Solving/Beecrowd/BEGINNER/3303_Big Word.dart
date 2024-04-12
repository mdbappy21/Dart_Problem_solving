import 'dart:io';

void main() {
  String word = stdin.readLineSync()!;
  int len = word.length;
  if (len >= 10)
    print("palavrao");
  else
    print("palavrinha");
}
