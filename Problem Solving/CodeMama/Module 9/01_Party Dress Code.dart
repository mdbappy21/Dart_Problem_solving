import 'dart:io';

void main() {
  String dress = stdin.readLineSync()!;
  int temp = int.parse(stdin.readLineSync()!);

  if (dress == "casual" && temp >= 15 && temp <= 25)
    print("Jeans and a light jacket.");
  else if (dress == "festive" && temp >= 25)
    print("Colorful dress and sandals.");
  else
    print("Wear what you're comfortable in.");
}
