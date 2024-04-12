import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    List<String> person = stdin.readLineSync()!.split(" ");
    String name = person[0];
    if (name[0] == 'T' && name[1] == 'h' && name[2] == 'o' && name[3] == 'r')
      print("Y");
    else
      print("N");
  }
}
