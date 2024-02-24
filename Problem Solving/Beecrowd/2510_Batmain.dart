import 'dart:io';

void main() {
  int testCase;
  testCase = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < testCase; i++) {
    String? batman = stdin.readLineSync();
    if (batman == null)
      print("N");
    else
      print('Y');
  }
}
