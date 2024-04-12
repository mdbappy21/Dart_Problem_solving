import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null) break;
    int? ninja = int.tryParse(line);
    if (ninja == null) break;

    if (ninja == 1) {
      print("0");
    } else {
      for (int i = 0; i < ninja; i++) {
        var result = pow(2, i).toInt();
        if (result == ninja) {
          print(i);
          break;
        }
      }
    }
  }
}
