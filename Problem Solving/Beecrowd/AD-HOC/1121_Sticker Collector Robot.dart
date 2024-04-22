import 'dart:io';

void main() {
  List<int> dx = [-1, 0, 1, 0];
  List<int> dy = [0, 1, 0, -1];
  List<String> ref = ['N', 'L', 'S', 'O'];

  while (true) {
    List<int> inputs = _getIntList();
    int n = inputs[0];
    int m = inputs[1];
    int s = inputs[2];

    if (n == 0 && m == 0 && s == 0) break;

    List<String> mat = List.generate(n, (_) => '');

    int x = 0;
    int pi = 0;
    int pj = 0;
    int d = 0;

    for (int i = 0; i < n; i++) {
      mat[i] = stdin.readLineSync()!;
      for (int j = 0; j < m; j++) {
        if (ref.contains(mat[i][j])) {
          pi = i;
          pj = j;
          d = ref.indexOf(mat[i][j]);
        }
      }
    }

    String co = stdin.readLineSync()!;

    for (int i = 0; i < s; i++) {
      if (co[i] == 'E') {
        d = (d + 3) % 4;
      } else if (co[i] == 'D') {
        d = (d + 1) % 4;
      } else if (pi + dx[d] != n && pj + dy[d] != m && pi + dx[d] >= 0 && pj + dy[d] >= 0) {
        String t = mat[pi + dx[d]][pj + dy[d]];
        if (t != '#') {
          mat[pi] = mat[pi].replaceRange(pj, pj + 1, '.');
          if (t == '*') x++;
          pi += dx[d];
          pj += dy[d];
        }
      }
    }

    print(x);
  }
}

List<int> _getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}
