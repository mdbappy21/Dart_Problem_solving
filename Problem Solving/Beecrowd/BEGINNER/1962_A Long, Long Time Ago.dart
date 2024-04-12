import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    int year = int.parse(stdin.readLineSync()!);
    int result = 2015 - year;
    if (result > 0)
      print("$result D.C.");
    else {
      result = result.abs();
      result=result+1;
      print("$result A.C.");
    }
  }
}
