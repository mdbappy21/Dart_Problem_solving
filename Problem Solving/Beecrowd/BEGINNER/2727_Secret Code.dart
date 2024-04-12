import 'dart:io';

void main() {
  String str;

  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    int n = int.tryParse(input) ?? -1;
    if (n == -1) break;

    for (int j = 0; j < n; j++) {
      str = stdin.readLineSync()!;
      int space = 0;
      for (int i = 0; i < str.length; i++) {
        if (str[i] == ' ') space++;
      }

      int count = 96;
      for (int i = 0; i < str.length; i++) {
        if (str[i] == ' ')
          break;
        else
          count++;
      }

      if (space == 0) {
        print(String.fromCharCode(count));
      } else {
        int c = 0;
        if (space == 1)
          c = 3;
        else if (space == 2)
          c = 6;
        else if (space == 3)
          c = 9;
        else if (space == 4)
          c = 12;
        else if (space == 5)
          c = 15;
        else if (space == 6)
          c = 18;
        else if (space == 7)
          c = 21;
        else if (space == 8) c = 24;
        print(String.fromCharCode(c + count));
      }
    }
  }
}
