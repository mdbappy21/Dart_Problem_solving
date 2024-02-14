import 'dart:io';

void main() {
  while (true) {
    int N = int.parse(stdin.readLineSync()!);
    if (N == 0) break;

    int j = 1, p = 0, q = 0, r;
    List<List<int>> ara = List.generate(N, (_) => List.filled(N, 0));
    int i = N;

    r = N % 2 == 0 ? N ~/ 2 : (N ~/ 2) + 1;

    for (int c = 1; c <= r; c++) {
      for (int a = p; a < i; a++) {
        for (int b = q; b < i; b++) {
          ara[a][b] = j;
        }
      }
      j++;
      p++;
      q++;
      i--;
    }

    for (int g = 0; g < N; g++) {
      for (int h = 0; h < N; h++) {
        if (h == 0)
          stdout.write('${ara[g][h]}'.padLeft(3));
        else
          stdout.write('   ${ara[g][h]}'.padLeft(3));
      }
      print('');
    }
    print('');
  }
}
