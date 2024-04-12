import 'dart:io';

void main() {
  int row = int.parse(stdin.readLineSync()!);
  int column = int.parse(stdin.readLineSync()!);
  if (row % 2 == 0) {
    if (column % 2 != 0)
      print(0);
    else
      print(1);
  } else {
    if (column % 2 == 0)
      print(0);
    else
      print(1);
  }
}
