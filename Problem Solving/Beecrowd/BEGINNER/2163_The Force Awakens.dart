import 'dart:io';

void main() {
  List<int> dimensions = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int N = dimensions[0];
  int M = dimensions[1];

  List<List<int>> a = List.generate(N, (i) => List<int>.filled(M, 0));
  int x_axis = 0, y_axis = 0;

  // Input
  for (int i = 0; i < N; i++) {
    List<int> rowValues = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    for (int j = 0; j < M; j++) a[i][j] = rowValues[j];
  }

  // Find '42' and check conditions
  for (int i = 1; i < N - 1; i++) {
    for (int j = 1; j < M - 1; j++) {
      if (a[i][j] == 42) {
        if (a[i - 1][j - 1] == 7 &&
            a[i - 1][j] == 7 &&
            a[i - 1][j + 1] == 7 &&
            a[i][j - 1] == 7 &&
            a[i][j + 1] == 7 &&
            a[i + 1][j - 1] == 7 &&
            a[i + 1][j] == 7 &&
            a[i + 1][j + 1] == 7) {
          x_axis = i + 1;
          y_axis = j + 1;
          break; // Exit the loop once the coordinates are found
        }
      }
    }
  }

  print("$x_axis $y_axis");
}
