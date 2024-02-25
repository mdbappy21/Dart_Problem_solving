import 'dart:io';

void main() {
  while (true) {
    String? ch = stdin.readLineSync();
    if (ch == "EOF" || ch == null) break;

    int n = int.parse(stdin.readLineSync()!);
    List<int> a = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    for (int i = 0; i < n; i++) {
      int index = a[i] - 1;
      stdout.write(ch[index]);
    }
    print('');
  }
}
