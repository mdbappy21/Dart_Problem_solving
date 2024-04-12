import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int p = int.parse(input[0]);
  int j1 = int.parse(input[1]);
  int j2 = int.parse(input[2]);
  int r = int.parse(input[3]);
  int a = int.parse(input[4]);

  int sum = j1 + j2;
  int win;

  if ((sum % 2 == 0 && p == 1) || (sum % 2 == 1 && p == 0)) {
    win = 1;
  } else {
    win = 2;
  }

  if ((r == 1 && a == 0) || (r == 0 && a == 1)) {
    win = 1;
  } else if (r == 1 && a == 1) {
    win = 2;
  }

  print("Jogador $win ganha!");
}
