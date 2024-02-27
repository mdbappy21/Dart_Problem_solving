import 'dart:io';

void main() {
  Set<String> item = {};
  int maxLines = 1000000;
  for (int i = 0; i < maxLines; i++) {
    String a = stdin.readLineSync()!;
    if (a == ')' || a == '(') {
      break;
    }
    item.add(a);
  }
  print(item.length + 1);
}
