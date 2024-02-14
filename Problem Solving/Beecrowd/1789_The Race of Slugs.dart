import 'dart:io';

void main() {
  while (true) {
    String ? a = stdin.readLineSync();
    if (a == "EOF"||a== null)
      break;
    else {
      int N = int.parse(a);
      List<String> array = stdin.readLineSync()!.split(" ");
        int max = 0;
      for (int i = 0; i < N; i++) {
        int c = int.parse(array[i]);
        if (c > max) max = c;
      }

      if (max < 10)
        print('1');
      else if (max < 20)
        print('2');
      else
        print('3');
    }
  }
}
