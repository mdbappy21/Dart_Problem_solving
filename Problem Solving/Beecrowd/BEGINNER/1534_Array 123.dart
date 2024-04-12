import 'dart:io';

void main() {
  while (true) {
    String? inputs = stdin.readLineSync();
    if (inputs == null || inputs == "EOF") break;
    int N = int.parse(inputs);
    List<List<int>> array = List.generate(N, (_) => List.filled(N, 0));

    for (int i = 0; i < N; i++) {
      for (int j = 0; j < N; j++) {
        array[i][j] = 3;
      }
    }

    for (int i = 0; i < N; i++) {
      array[i][i] = 1;
    }

    int d = N - 1;
    for (int i = 0, j = d; i < N; i++, j--) {
      array[i][j] = 2;
    }

    for (int i = 0; i < N; i++) {
      for (int j = 0; j < N; j++) {
        stdout.write("${array[i][j]}");
      }
      print("");
    }
  }
}
