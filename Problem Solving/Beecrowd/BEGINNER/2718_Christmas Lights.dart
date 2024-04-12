import 'dart:io';

String valueToChar(int a) {
  if (a >= 0 && a <= 9)
    return String.fromCharCode(a + '0'.codeUnitAt(0));
  else
    return String.fromCharCode(a - 10 + 'a'.codeUnitAt(0));
}

int decimalToBase(int x, int base) {
  int count = 0;
  int ans = 0;
  while (x > 0) {
    if (valueToChar(x % base) == '1')
      count++;
    else
      count = 0;

    if (count > ans) ans = count;

    x ~/= base;
  }
  return ans;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int light = int.parse(stdin.readLineSync()!);
    print(decimalToBase(light, 2));
  }
}
