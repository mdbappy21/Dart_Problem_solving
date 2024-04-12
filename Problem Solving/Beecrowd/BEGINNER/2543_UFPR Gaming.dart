import 'dart:io';

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line == "EOF") break;
    List<String> input = line.split(' ');
    int number = int.tryParse(input[0])??-1;
    if (number == -1) break;
    int id = int.parse(input[1]);
    int count = 0;

    while (number > 0) {
      String? line2 = stdin.readLineSync();
      if (line2 == null) break;
      List<String> input2 = line2.split(' ');
      int id1 = int.parse(input2[0]);
      int num = int.parse(input2[1]);

      if (id == id1 && num == 0) count++;
      number--;
    }

    print(count);
  }
}
