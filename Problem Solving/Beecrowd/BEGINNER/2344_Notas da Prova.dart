import 'dart:io';

void main() {
  int input = int.parse(stdin.readLineSync()!);
  if (input == 0)
    print("E");
  else if (input >= 1 && input <= 35)
    print("D");
  else if (input >= 36 && input <= 60)
    print("C");
  else if (input >= 61 && input <= 85)
    print("B");
  else if (input >= 86 && input <= 100)
    print("A");
}
