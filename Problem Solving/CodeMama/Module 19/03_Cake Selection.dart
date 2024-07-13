import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int w = input[0];
  int s = input[1];
  int c = input[2];

  if (w < 200 || w > 300)
    print("No");
  else if (s < 50)
    print("No");
  else if (c < 150)
    print("No");
  else
    print("Yes");
}
