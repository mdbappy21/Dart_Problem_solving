import 'dart:io';

void main() {
  String gen;
  int n, c, b;
  n = int.parse(stdin.readLineSync()!);

  b = c = 0;
  while (n-- != 0) {
    List<String> child = stdin.readLineSync()!.split(" ");
    gen = child[1];

    if (gen == 'F')
      ++b;
    else
      ++c;
  }

  print("$c carrinhos");
  print("$b bonecas");
}
