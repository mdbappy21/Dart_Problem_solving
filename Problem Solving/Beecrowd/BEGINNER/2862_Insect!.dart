import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  int n;

  while (t-- != 0) {
    n = int.parse(stdin.readLineSync()!);

    if (n > 8000)
      print("Mais de 8000!");
    else
      print("Inseto!");
  }
}
