import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  double count = 0;
  for (int i = 0; i < n; i++) {
    List<int> input = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    count += input[0] / input[1];
  }
  if (count > 1)
    print("FAIL");
  else
    print("OK");
}
