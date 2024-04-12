import 'dart:io';

void main() {
  while (true) {
    int t = int.parse(stdin.readLineSync()!);
    if (t == 0) break;
    for (int i = 1; i <= t; i++) {
      int n = int.parse(stdin.readLineSync()!);
      if (n % 2 != 0)
        print(n * 2 - 1);
      else
        print(n * 2 - 2);
    }
  }
}
