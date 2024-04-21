import 'dart:io';

void main() {
  while (true) {
    List<String> inputs = stdin.readLineSync()!.split(' ');
    int b = int.parse(inputs[0]);
    int n = int.parse(inputs[1]);

    if (b == 0 && n == 0) break;

    List<int> reserves = stdin.readLineSync()!.split(" ").map(int.parse).toList();

    bool test = false;

    for (int i = 0; i < n; i++) {
      List<String> line = stdin.readLineSync()!.split(' ');
      int d = int.parse(line[0]);
      int c = int.parse(line[1]);
      int v = int.parse(line[2]);

      reserves[d - 1] -= v;
      reserves[c - 1] += v;
    }

    for (int reserve in reserves) {
      if (reserve < 0) {
        test = true;
        break;
      }
    }

    if (test) {
      print("N");
    } else {
      print("S");
    }
  }
}
