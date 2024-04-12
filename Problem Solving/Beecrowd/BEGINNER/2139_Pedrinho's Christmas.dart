import 'dart:io';

void main() {
  List<int> ara = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 25];

  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input=="EOF") {
      break;
    }

    List<int> values = input.split(' ').map(int.parse).toList();
    int month = values[0];
    int day = values[1];

    if (month == 12 && day == 25) {
      print("E natal!");
    } else if (month == 12 && day > 25) {
      print("Ja passou!");
    } else if (month == 12 && day == 24) {
      print("E vespera de natal!");
    } else {
      int x = ara[month - 1] - day;
      for (int i = month; i < 12; i++) {
        x += ara[i];
      }
      print("Faltam $x dias para o natal!");
    }
  }
}
