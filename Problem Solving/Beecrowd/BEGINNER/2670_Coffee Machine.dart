import 'dart:io';

void main() {
  List<int> time = [];

  int first = int.parse(stdin.readLineSync()!);
  int second = int.parse(stdin.readLineSync()!);
  int third = int.parse(stdin.readLineSync()!);

  time.add((second) + (third * 2));
  time.add((first) + (third));
  time.add((second) + (first*2));

  time.sort();

  print(time[0]*2);
}
