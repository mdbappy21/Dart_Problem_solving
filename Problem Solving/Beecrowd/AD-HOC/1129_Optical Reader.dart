import 'dart:io';

void main() {
  int n;
  int a, b, c, d, e;
  int teste;

  while (true) {
    n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;

    for (int i = 0; i < n; i++) {
      teste = 0;

      List<int> inputs = _getIntListFromLine();
      a = inputs[0];
      b = inputs[1];
      c = inputs[2];
      d = inputs[3];
      e = inputs[4];

      if (a <= 127) {
        teste++;
        a = 1;
      } else {
        a = 0;
      }
      if (b <= 127) {
        teste++;
        b = 1;
      } else {
        b = 0;
      }
      if (c <= 127) {
        teste++;
        c = 1;
      } else {
        c = 0;
      }
      if (d <= 127) {
        teste++;
        d = 1;
      } else {
        d = 0;
      }
      if (e <= 127) {
        teste++;
        e = 1;
      } else {
        e = 0;
      }

      if (teste == 1) {
        if (a == 1) stdout.write('A\n');
        if (b == 1) stdout.write('B\n');
        if (c == 1) stdout.write('C\n');
        if (d == 1) stdout.write('D\n');
        if (e == 1) stdout.write('E\n');
      } else {
        stdout.write('*\n');
      }
    }
  }
}

List<int> _getIntListFromLine() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}
