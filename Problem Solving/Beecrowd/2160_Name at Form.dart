import 'dart:io';

void main() {
  String name = stdin.readLineSync()!;
  if(name.length>80)
  print("NO");
  else
  print("YES");
}
