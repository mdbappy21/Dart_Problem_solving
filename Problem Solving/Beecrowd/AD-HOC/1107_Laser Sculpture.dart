import 'dart:io';

void main() {
  while (true) {
    List<int> inputs = _getIntList();
    int a = inputs[0];
    int c = inputs[1];

    if (a == 0 && c == 0) break;

    List<int> xValues = _getIntList();

    int cnt = 0;
    bool b = false;
    int tmp = a;
    int w = a;

    for (int i = 0; i < c; i++) {
      int x = xValues[i];

      if (x <= tmp) {
        b = false;
      } else {
        if (!b) {
          cnt += w - tmp;
        }
        w = x;
        b = true;
      }

      tmp = x;
    }

    if (!b) {
      cnt += w - tmp;
    }

    print(cnt);
  }
}

List<int> _getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}
