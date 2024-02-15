import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    List<String> array = stdin.readLineSync()!.split(" ");
    String b=array[1];
    List<String> number = stdin.readLineSync()!.split(" ");
    int c = int.parse(number[0]);
    int d = int.parse(number[1]);
    int e = c + d;
  
    if (b[0] == 'P') {
      if (e % 2 == 0)
        print(array[0]);
      else
        print(array[2]);
    } else {
      if (e % 2 == 0)
        print(array[2]);
      else
        print(array[0]);
    }
  }
}
