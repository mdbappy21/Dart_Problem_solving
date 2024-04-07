import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- != 0) {
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        print(0);
        break;
      case 2:
        print(6);
        break;
      case 3:
        print(12);
        break;
      case 4:
        print(90);
        break;
      case 5:
        print(360);
        break;
      case 6:
        print(2040);
        break;
      case 7:
        print(10080);
        break;
      case 8:
        print(54810);
        break;
      case 9:
        print(290640);
        break;
      case 10:
        print(1588356);
        break;
      case 11:
        print(8676360);
        break;
      case 12:
        print(47977776);
        break;
      case 13:
        print(266378112);
        break;
      case 14:
        print(1488801600);
    }
  }
}
