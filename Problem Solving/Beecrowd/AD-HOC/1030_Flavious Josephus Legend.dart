import 'dart:io';

int remaining(int n, int k) {
  int r = 0;
  for (int i = 2; i <= n; i++) {
    r = (r + k) % i;
  }
  return r;
}

void main() {
  int n, x, y;

  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> inputs = stdin.readLineSync()!.split(' ');
    x = int.parse(inputs[0]);
    y = int.parse(inputs[1]);
    print("Case ${i + 1}: ${remaining(x, y) + 1}");
  }
}
