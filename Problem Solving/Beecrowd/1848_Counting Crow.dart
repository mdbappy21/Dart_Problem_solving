import 'dart:io';

void main() {
  int sum;
  List<String> array;
  for (int i = 1; i <= 3; i++) {
    sum = 0;
    while (true) {
      array = stdin.readLineSync()!.split("");
      if (array[0] == 'c') break;

      if (array[0] == '-') {
        if (array[1] == '-') {
          if (array[2] != '-')
            sum += 1;
        } 
        else {
          if (array[2] == '-')
            sum += 2;
          else
            sum += 3;
        }
      } else if (array[0] == '*') {
        if (array[1] == '-') {
          if (array[2] == '-')
            sum += 4;
          else
            sum += 5;
        } else {
          if (array[2] == '-')
            sum += 6;
          else
            sum += 7;
        }
      }
    }
    print("$sum");
  }
}
