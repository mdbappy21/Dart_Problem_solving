import 'dart:io';

void main() {
  Map<int , String> b = {1: "MONDAY",2: "MONDAY",0: "FRIDAY",9: "FRIDAY",8: "THURSDAY", 7: "THURSDAY",5: "WEDNESDAY",6: "WEDNESDAY",3: "TUESDAY",4: "TUESDAY"};

  int t = int.parse(stdin.readLineSync()!);
  for (int j = 0; j < t; j++) {
    String str = stdin.readLineSync()!;
    if (str.length == 8) {
      bool f = false;
      for (int i = 0; i < 3; i++) {
        if (str.codeUnitAt(i) >= 65 && str.codeUnitAt(i) <= 90) {
          continue;
        } else {
          f = true;
          break;
        }
      }
      if (f) {
        print("FAILURE");
      } else {
        if (str[3] != '-') {
          print("FAILURE");
        } else {
          f = false;
          for (int i = 4; i <= 7; i++) {
            if (str.codeUnitAt(i) < 48 || str.codeUnitAt(i) > 57) {
              f = true;
              break;
            }
          }
          if (f) {
            print("FAILURE");
          } else {
            print(b[int.parse(str[7])]);
          }
        }
      }
    } else {
      print("FAILURE");
    }
  }
}
