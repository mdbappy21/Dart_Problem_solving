import 'dart:io';

void main() {
  while (true) {
    String? subjectNumber = stdin.readLineSync();
    if (subjectNumber == null || subjectNumber == "EOF") break;

    int subject = int.tryParse(subjectNumber) ?? -1;
    if (subject == -1) break;
    int totalNC = 0, totalC = 0;
    for (int s = 0; s < subject; s++) {
      List<String> tokens = stdin.readLineSync()!.split(' ');
      int N = int.parse(tokens[0]);
      int C = int.parse(tokens[1]);

      for (int i = 0; i < 2; i++) {
        totalNC += N * C;
        totalC += C;
      }
    }
    double result = (totalNC / (totalC * 100.0));
    print(result.toStringAsFixed(4));
  }
}
