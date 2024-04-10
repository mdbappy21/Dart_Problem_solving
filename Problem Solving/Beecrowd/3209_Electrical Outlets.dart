import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) {
    List<int> data = stdin.readLineSync()!.split(' ').map((String s) => int.parse(s)).toList();
    int dataCount = data.removeAt(0);
    int sumData = data.reduce((value, element) => value + element);
    print(sumData - dataCount + 1);
  }
}
