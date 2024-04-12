import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int goodSide = input[0] + input[1] + input[2] + input[5];
  int evilSide = input[3] + input[4];

  if (goodSide > evilSide) {
    print('Middle-earth is safe.');
  } else {
    print('Sauron has returned.');
  }
}
