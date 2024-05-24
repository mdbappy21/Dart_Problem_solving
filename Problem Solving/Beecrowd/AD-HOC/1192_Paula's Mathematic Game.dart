import 'dart:io';

void main() {
  int n, a, c;
  String b;
  
  n = int.parse(stdin.readLineSync()!);
  
  for (int i = 0; i < n; i++) {
    String input = stdin.readLineSync()!;
    a = int.parse(input[0]);
    b = input[1];
    c = int.parse(input[2]);
    
    if (a == c) {
      print(a * c);
    } else if (b.codeUnitAt(0) >= 65 && b.codeUnitAt(0) <= 90) {
      print(c - a);
    } else {
      print(c + a);
    }
  }
}
