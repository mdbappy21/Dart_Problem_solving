import 'dart:io';

void main() {
  int count = 0;
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input == "EOF") {
      break;
    }
    int n = int.tryParse(input) ?? -1;
    if (n == -1) break;
    count++;

    int num = 1 + ((n * (n + 1)) ~/ 2);

    if (n == 0) {
      print("Caso $count: $num numero");
    } else {
      print("Caso $count: $num numeros");
    }

    stdout.write("0");

    for (int i = 1; i <= n; i++) {
      stdout.write(" ${List.filled(i, i).join(" ")}");
    }

    print("\n");
  }
}
