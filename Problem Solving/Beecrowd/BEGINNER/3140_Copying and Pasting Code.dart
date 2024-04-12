import 'dart:io';

void main() {
  bool body = false;
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    if (input.contains("<body>")) {
      body = true;
    } else if (input.contains("</body>")) {
      body = false;
    }
    if (body) {
      print(input);
    }
  }
}
