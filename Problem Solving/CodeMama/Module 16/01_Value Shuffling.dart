import 'dart:io';

void main() {
  List<int> abc = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  String input = stdin.readLineSync()!;
  int a, b, c;

  if (input == "ABC") {
    a = abc[1];
    b = abc[2];
    c = abc[0];
    print("$b $c $a");
  } else if (input == "ACB") {
    a = abc[2];
    b = abc[1];
    c = abc[0];
    print("$a $b $c");
  } else if (input == "BAC") {
    a = abc[0];
    b = abc[2];
    c = abc[1];
    print("$a $b $c");
  } else if (input == "BCA") {
    a = abc[0];
    b = abc[1];
    c = abc[2];
    print("$a $b $c");
  } else if (input == "CAB") {
    a = abc[2];
    b = abc[0];
    c = abc[1];
    print("$c $a $b");
  } else if (input == "CBA") {
    a = abc[1];
    b = abc[0];
    c = abc[2];
    print("$a $b $c");
  }
}
