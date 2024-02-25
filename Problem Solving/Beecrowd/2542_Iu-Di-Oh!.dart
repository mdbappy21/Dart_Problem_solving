import 'dart:io';

void main() {
  while (true) {
    var n = int.parse(stdin.readLineSync()!);
    var input = stdin.readLineSync()!.split(' ');
    var m = int.parse(input[0]);
    var l = int.parse(input[1]);
    List<List<int>> M = List.generate(m, (_) => []);
    List<List<int>> L = List.generate(l, (_) => []);

    for (int i = 0; i < m; i++) {
      var row = stdin.readLineSync()!.split(' ');
      for (int j = 0; j < n; j++) {
        M[i].add(int.parse(row[j]));
      }
    }

    for (int i = 0; i < l; i++) {
      var row = stdin.readLineSync()!.split(' ');
      for (int j = 0; j < n; j++) {
        L[i].add(int.parse(row[j]));
      }
    }

    var MM = int.parse(stdin.readLineSync()!);
    var LL = int.parse(stdin.readLineSync()!);
    var A = int.parse(stdin.readLineSync()!);
    var s = M[MM - 1][A - 1];
    var S = L[LL - 1][A - 1];

    if (s > S)
      print('Marcosn');
    else if (s < S)
      print('Leonardon');
    else
      print('Empaten');
  }
}
