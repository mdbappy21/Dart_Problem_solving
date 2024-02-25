import 'dart:io';

void main() {
  int n, m, a = 0, b = 0, c = 0, r = 0;
  while (true) {
    List<String>? test = stdin.readLineSync()?.split(" ");
    if (test == null || test.length != 2 || test=="EOF") break;

    n = int.tryParse(test[0]) ?? -1;
    if (n == -1) break;

    m = int.parse(test[1]);
    List<List<int>> ans = List.generate(n, (i) => List<int>.filled(m, 0));

    for (int i = 0; i < n; i++) {
      ans[i] = stdin.readLineSync()!.split(" ").map(int.parse).toList();
      for (int j = 0; j < m; j++) {
        if (ans[i][j] == 1) {
          a = i;
          b = j;
        }
        if (ans[i][j] == 2) {
          r = i;
          c = j;
        }
      }
    }
    int res = 0;
    res = (c - b).abs() + (r - a).abs();
    print(res);
  }
}
