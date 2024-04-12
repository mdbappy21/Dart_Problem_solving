import 'dart:io';

void main() {
  List<String> name = [
    "Dasher",
    "Dancer",
    "Prancer",
    "Vixen",
    "Comet",
    "Cupid",
    "Donner",
    "Blitzen",
    "Rudolph"
  ];

  int winer = 0;
  List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  for (int i = 0; i < 9; ++i) {
    winer += input[i];
  }

  print(name[(winer - 1) % 9]);
}
