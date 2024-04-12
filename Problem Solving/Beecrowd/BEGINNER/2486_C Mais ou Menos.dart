import 'dart:io';

void main() {
  int T;
  while (true) {
    T = int.parse(stdin.readLineSync()!);
    if (T == 0) break;

    int food = 0;
    for (int I = 0; I < T; I++) {
      List<String> input = stdin.readLineSync()!.split(" ");
      int n = int.parse(input[0]);
      String str = input[1];

      if (str == "suco") {
        food = food + (n * 120);
      } else if (str == "morango" || str == "mamao") {
        food = food + (n * 85);
      } else if (str == "goiaba") {
        food = food + (n * 70);
      } else if (str == "manga") {
        food = food + (n * 56);
      } else if (str == "laranja") {
        food = food + (n * 50);
      } else if (str == "brocolis") {
        food = food + (n * 34);
      }
    }

    if (food < 110) {
      print("Mais ${110 - food} mg");
    } else if (food > 130) {
      print("Menos ${food - 130} mg");
    } else {
      print("$food mg");
    }
  }
}
