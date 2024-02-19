import 'dart:io';

void main() {
  int n;
  n = int.parse(stdin.readLineSync()!);
  List<List<int>> ara = List.generate(n + 1, (i) => List<int>.filled(n + 1, 0));

  for (int i = 0; i <= n; i++) {
    List<String> array = stdin.readLineSync()!.split(" ");
    for (int j = 0; j <= n; j++) ara[i][j] = int.parse(array[j]);
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (ara[i][j] + ara[i][j + 1] + ara[i + 1][j] + ara[i + 1][j + 1] < 2)
        stdout.write("U");
      else
        stdout.write("S");
    }
    stdout.write("\n");
  }
}
