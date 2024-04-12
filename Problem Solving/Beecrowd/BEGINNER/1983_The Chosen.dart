import 'dart:io';

void main() {
  int student = int.parse(stdin.readLineSync()!);
  double max = 0;
  int maxReg = 0;
  for (int i = 0; i < student; i++) {
    List<String> reg = stdin.readLineSync()!.split(" ");
    double note = double.parse(reg[1]);
    if (note >= 8 && note > max) {
      max = note;
      maxReg = int.parse(reg[0]);
    }
  }
  if (max == 0)
    print('Minimum note not reached');
  else
    print(maxReg);
}
