import 'dart:io';

void main() {
  int n, h, d, g;
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<int> tree = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    h = tree[0];
    d = tree[1];
    g = tree[2];

    if (h >= 200 && h <= 300) if (d >= 50) if (g >= 150) {
      print("Sim");
      continue;
    }

    print("Nao");
  }
}
