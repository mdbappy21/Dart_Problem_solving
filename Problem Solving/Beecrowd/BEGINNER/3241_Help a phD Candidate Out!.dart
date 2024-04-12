import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) {
    String opt = stdin.readLineSync()!;
    int plus = opt.split('+').length - 1;
    if (plus == 0) {
      print('skipped');
    } else {
      List<int> data = opt.split('+').map((e) => int.parse(e)).toList();
      print(data.reduce((value, element) => value + element));
    }
  }
}
