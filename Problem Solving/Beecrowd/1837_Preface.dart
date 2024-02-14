import 'dart:io';

void main() {
  int a, b, e, f=0, q, r;
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(' ');
  a = int.parse(inputs[0]);
  b = int.parse(inputs[1]);

  if (a < 0) {
    e = b;
    if (b < 0) e = -b;
    for (r = 0; r < e; r++) {
      f = a - r;
      if (f % b == 0) break;
    }
    q = f ~/ b;
  } else {
    q = a ~/ b;
    r = a % b;
  }
  print('$q $r');
}
