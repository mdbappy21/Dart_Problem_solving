import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int count = 0;
  for (int i = 1; i <= input[0]; i++) {
    if (input[i] != 0) {
      count++;
    }
  }
  print(count);
}
