import 'dart:io';

int countStringsWithT(List<String> strings) {
  int count = 0;
  for (String string in strings) {
    if (string.contains('T')) {
      count++;
    }
  }
  return count;
}


void main() {

  List<String> strings = [];
  for (int i = 0; i < 10; i++) {
    strings.add(stdin.readLineSync()!);
  }

  int result = countStringsWithT(strings);
  print(result);
}