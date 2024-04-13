import 'dart:io';

int remaining(int n, int k) {
  int r = 0;
  for (int i = 1; i < n; i++) {
    r = (r + k) % i;
  }
  return r;
}

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;
    int y = 1;
    while (true) {
      if (remaining(n, y) != 11)
        y++;
      else
        break;
    }
    print(y);
  }
}
