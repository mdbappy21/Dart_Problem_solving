import 'dart:io';

void main() {
  List<int> beans = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  for (int i = 0; i < 4; i++) if (beans[i] == 1) print(i + 1);
}
