import 'dart:io';

void main() {
  int iw = int.parse(stdin.readLineSync()!);
  if (iw > 1000)
    print(0);
  else
    print((1000 - iw) ~/ 2);
}
