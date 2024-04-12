import 'dart:io';

void main() {
  int t, h, m, o;
  t = int.parse(stdin.readLineSync()!);

  while (t-- > 0) {
    List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    h = input[0];
    m = input[1];
    o = input[2];

    if (h < 10) {
      print("0$h:${m < 10 ? '0$m' : m} - ${o == 0 ? 'A porta fechou!' : 'A porta abriu!'}");
    } else {
      print("$h:${m < 10 ? '0$m' : m} - ${o == 0 ? 'A porta fechou!' : 'A porta abriu!'}");
    }
  }
}
