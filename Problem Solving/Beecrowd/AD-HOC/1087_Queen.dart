import 'dart:io';

void main() {
  while (true) {
    List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
    int X1 = input[0];
    int Y1 = input[1];
    int X2 = input[2];
    int Y2 = input[3];

    if (X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0) break;

    if (X1 == X2 && Y1 == Y2) {
      print("0");
    } else if (X1 == X2 || Y1 == Y2) {
      print("1");
    } else {
      int res = (X1 - X2).abs();
      int res2 = (Y1 - Y2).abs();

      if (res - res2 == 0) {
        print("1");
      } else {
        print("2");
      }
    }
  }
}
