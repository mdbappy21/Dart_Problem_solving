import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input == "EOF") break;
    List<String> parts = input.split(' ');
    int N = int.parse(parts[0]);
    int M = int.parse(parts[1]);

    List<List<int>> a = List.generate(N, (index) => List<int>.filled(M, 0));

    for (int i = 0; i < N; i++) {
      List<String> row = stdin.readLineSync()!.split(' ');
      for (int j = 0; j < M; j++) {
        a[i][j] = int.parse(row[j]);
      }
    }

    if (M == 1) {
      if (N == 1) {
        if (a[0][0] == 1)
          stdout.write('9\n');
        else
          stdout.write('0\n');
      } else {
        for (int i = 0; i < N; i++) {
          int sum = 0;
          if (i != N - 1) {
            if (a[i][0] == 1)
              stdout.write('9\n');
            else {
              if (a[i + 1][0] == 1) sum += 1;
              stdout.write('$sum\n');
            }
          } else {
            if (a[i][0] == 1)
              stdout.write('9\n');
            else {
              if (a[i - 1][0] == 1) sum += 1;
              stdout.write('$sum\n');
            }
          }
        }
      }
    } else if (M == 2) {
      if (N == 1) {
        if (a[0][0] == 1) stdout.write('9');
        else {
          if (a[0][1] == 1) stdout.write('1');
          else stdout.write('0');
        }
        if (a[0][1] == 1) stdout.write('9');
        else {
          if (a[0][0] == 1) stdout.write('1');
          else stdout.write('0');
        }
        stdout.write('\n');
      } else {
        for (int i = 0; i < N; i++) {
          for (int j = 0; j < M; j++) {
            int sum = 0;
            if (a[i][j] == 1)
              stdout.write('9');
            else {
              if (j == 0) {
                if (i == 0) {
                  if (a[i][j + 1] == 1) sum += 1;
                  if (a[i + 1][j] == 1) sum += 1;
                } else if (i == N - 1) {
                  if (a[i][j + 1] == 1) sum += a[i][j + 1];
                  if (a[i - 1][j] == 1) sum += a[i - 1][j];
                } else {
                  if (a[i][j + 1] == 1) sum += 1;
                  if (a[i + 1][j] == 1) sum += 1;
                  if (a[i - 1][j] == 1) sum += a[i - 1][j];
                }
              } else {
                if (i == 0) {
                  if (a[i][j - 1] == 1) sum += 1;
                  if (a[i + 1][j] == 1) sum += 1;
                } else if (i == N - 1) {
                  if (a[i][j - 1] == 1) sum += 1;
                  if (a[i - 1][j] == 1) sum += 1;
                } else {
                  if (a[i][j - 1] == 1) sum += 1;
                  if (a[i + 1][j] == 1) sum += 1;
                  if (a[i - 1][j] == 1) sum += 1;
                }
              }
              stdout.write('$sum');
            }
          }
          stdout.write('\n');
        }
      }
    } else {
      for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
          int sum = 0;
          if (a[i][j] == 1)
            stdout.write('9');
          else {
            if (j == 0) {
              if (i == 0) {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i + 1][j] == 1) sum += a[i + 1][j];
              } else if (i == N - 1) {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i - 1][j] == 1) sum += a[i - 1][j];
              } else {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i - 1][j] == 1) sum += a[i - 1][j];
                if (a[i + 1][j] == 1) sum += a[i + 1][j];
              }
            } else if (j < M - 1) {
              if (i == 0) {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i + 1][j] == 1) sum += a[i + 1][j];
                if (a[i][j - 1] == 1) sum += a[i][j - 1];
              } else if (i == N - 1) {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i - 1][j] == 1) sum += a[i - 1][j];
                if (a[i][j - 1] == 1) sum += a[i][j - 1];
              } else {
                if (a[i][j + 1] == 1) sum += a[i][j + 1];
                if (a[i + 1][j] == 1) sum += a[i + 1][j];
                if (a[i][j - 1] == 1) sum += a[i][j - 1];
                if (a[i - 1][j] == 1) sum += a[i - 1][j];
              }
            } else {
              if (i == 0) {
                if (a[i][j - 1] == 1) sum += a[i][j - 1];
                if (a[i + 1][j] == 1) sum += a[i + 1][j];
              } else if (i == N - 1) {
                if (a[i][j - 1] == 1) sum += a[i][j - 1];
                if (a[i - 1][j] == 1) sum += 1;
              } else {
                if (a[i][j - 1] == 1) sum += 1;
                if (a[i - 1][j] == 1) sum += 1;
                if (a[i + 1][j] == 1) sum += 1;
              }
            }
            stdout.write('$sum');
          }
        }
        stdout.write('\n');
      }
    }
  }
}
