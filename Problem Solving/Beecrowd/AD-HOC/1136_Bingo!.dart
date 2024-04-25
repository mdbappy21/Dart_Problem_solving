import 'dart:io';

void main() {
  while (true) {
    var input = _getIntListFromLine();
    var n = input[0];
    var b = input[1];

    if (n == 0 && b == 0) break;

    var c = List<int>.filled(n + 1, 0);
    var v = _getIntListFromLine();

    for (var i = 0; i < b; ++i) {
      for (var j = 0; j <= i; ++j) {
        c[(v[i] - v[j]).abs()] = 1;
      }
    }

    var i = 0;
    for (; i <= n; ++i) {
      if (c[i] == 0) {
        break;
      }
    }

    stdout.write((i - 1 != n) ? 'N\n' : 'Y\n');
  }
}

List<int> _getIntListFromLine() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}
