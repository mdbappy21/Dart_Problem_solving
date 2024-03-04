import 'dart:io';

void main() {
  List<String> input = [];
  for (int i = 0; i < 10; i++) {
    String entry = stdin.readLineSync()!;
    input.add(entry);
  }
  print(input[2]);
  print(input[6]);
  print(input[8]);
}
