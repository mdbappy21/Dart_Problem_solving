import 'dart:io';

void main() {
  List<int> quantities1 = [];
  List<int> quantities2 = [];

  String input1 = stdin.readLineSync()!;
  quantities1 = input1.split(' ').map(int.parse).toList();

  String input2 = stdin.readLineSync()!;
  quantities2 = input2.split(' ').map(int.parse).toList();

  int miss = 0;
  for (int i = 0; i < 3; i++) {
    miss += quantities2[i] > quantities1[i] ? quantities2[i] - quantities1[i] : 0;
  }

  print(miss);
}
