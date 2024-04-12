import 'dart:io';

void main() {
  List<String> firstLine = stdin.readLineSync()!.split(" ");
  List<String> secondLine = stdin.readLineSync()!.split(" ");
  int height = int.parse(firstLine[0]);
  int length = int.parse(firstLine[1]);
  int count = 0;
  for (int i = 0; i < length-1; i++) {
    int diff = (int.parse(secondLine[i]) - int.parse(secondLine[i + 1])).abs();
    if (diff > height) {
      count = 0;
      break;
    } else
      count = 1;
  }
  if (count == 0)
    print("GAME OVER");
  else
    print("YOU WIN");
}
