import 'dart:io';

void main() {
  while (true) {
    String? N = stdin.readLineSync();
    if (N == "EOF" || N == null) break;
    int t = int.parse(N);
    List<double> A = [];
    for (int i = 0; i < t; i++) {
      List<double> ab = stdin.readLineSync()!.split(" ").map(double.parse).toList();
      double a = ab[0];
      double b = ab[1];
      double m = b / a;
      A.add(m);
    }
    for (int i = 0; i < t; i++) {
      if (i == 0)
        print(1);
      else {
        bool x = false;
        for (int j = 0; j < i; j++) {
          if (A[i] <= A[j]) {
            x = true;
            break;
          }
        }
        if (!x) print(i + 1);
      }
    }
  }
}
