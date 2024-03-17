import 'dart:io';

void main() {
  String c;
  int i, n, x;
  int ans = 0;
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; ++i) {
    List<String> cx = stdin.readLineSync()!.split(" ");
    c = cx[0];
    x = int.parse(cx[1]);
    if (c == 'G')
      ans -= x;
    else
      ans += x;
  }

  if (ans >= 0)
    print("A greve vai parar.");
  else
    print("NAO VAI TER CORTE, VAI TER LUTA!");
}
