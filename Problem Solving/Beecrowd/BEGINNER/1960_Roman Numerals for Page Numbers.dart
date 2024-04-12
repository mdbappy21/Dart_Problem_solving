import 'dart:io';

void main() {
  List<String> a = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
  List<String> b = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
  List<String> c = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];

  int n = int.parse(stdin.readLineSync()!);

  String result = a[n ~/ 100] + b[(n % 100) ~/ 10] + c[n % 10];
  print(result);
}
