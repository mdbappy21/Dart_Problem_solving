import 'dart:io';

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line == "EOF") break;
    List<String> parts = line.split(' ');
    int num1 = int.tryParse(parts[0]) ?? -1;
    int num2 = int.tryParse(parts[1]) ?? -1;
    if (num1 == -1 || num2 == -1) break;
    String dataPizza = "Pizza antes de FdI";
    int count = 0;
    int count2 = 0;
    int aux = 0;

    for (int i = 0; i < num2; i++) {

      String data = stdin.readLineSync()!;
      List<String> parts2 = data.split(' ');
      for (int k = 1; k <= num1; k++) {
        int x = int.parse(parts2[k]);
        if (x == 1) {
          count++;
        }
      }
      if (count == num1) {
        if (aux == 0) {
          dataPizza = parts2[0];
          aux = 1;
        }
      } else {
        count2 ++;
      }
      count = 0;
    }
    if (count2 == num2)
      stdout.write('Pizza antes de FdI\n');
    else
      stdout.write('$dataPizza\n');
  }
}
