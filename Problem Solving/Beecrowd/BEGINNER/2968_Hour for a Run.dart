import 'dart:io';

void main() {
  List<int> inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int v = inputs[0];
  int n = inputs[1];

  for (int i = 1; i < 10; ++i) {
    int result = (i * v * n) % 10 != 0 ? ((i * v * n) ~/ 10) + 1 : (i * v * n) ~/ 10;
    stdout.write('$result${i < 9 ? ' ' : '\n'}');
  }
}
