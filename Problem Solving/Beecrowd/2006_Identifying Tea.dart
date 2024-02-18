import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);
  List<String> contestant = stdin.readLineSync()!.split(" ");
  int count = 0;
  for (int i = 0; i < 5; i++) {
    if (int.parse(contestant[i]) == T) count++;
  }
  print(count);
}
