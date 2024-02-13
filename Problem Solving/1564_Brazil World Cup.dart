import 'dart:io';

void main() {
  int complain;
  while (true) {
    var N = stdin.readLineSync();
    if (N == "EOF" || N == null)
      break;
    else {
      complain = int.parse(N);
      if (complain == 0) {
        print("vai ter copa!");
      } else
        print("vai ter duas!");
    }
  }
}
