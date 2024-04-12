
import 'dart:io';

void main() {
  int B = int.parse(stdin.readLineSync()!);

  int G = int.parse(stdin.readLineSync()!);

  int ballsNeed = (G ~/ 2) - B;

  if (ballsNeed > 0) {
    print("Faltam $ballsNeed bolinha(s)");
  } else {
    print("Amelia tem todas bolinhas!");
  }
}
