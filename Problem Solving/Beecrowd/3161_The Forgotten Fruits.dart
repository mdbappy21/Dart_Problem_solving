import 'dart:io';

void main() {
  List<int> nm = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int n = nm[0], m = nm[1];
  List<String> fruits = [];
  List<String> comes = [];
  List<String> want = [];
  List<String> distroy = [];

  for (int i = 0; i < n; i++) {
    String input = stdin.readLineSync()!.toLowerCase();
    fruits.add(input);
  }
  for (int i = 0; i < m; i++) {
    String input1 = stdin.readLineSync()!.toLowerCase();
    for (int j = 0; j < n; j++) {
      if (input1.contains(fruits[j]))
        comes.add(fruits[j]);
      else if (input1.contains(fruits[j].split('').reversed.join()))
        comes.add(fruits[j]);
    }
  }
  String c = comes.join();
  for (int i = 0; i < n; i++) {
    if (c.contains(fruits[i]))
      want.add(fruits[i]);
    else
      distroy.add(fruits[i]);
  }

  String w = want.join();
  for (int i = 0; i < n; i++) {
    if (w.contains(fruits[i]))
      print("Sheldon come a fruta ${fruits[i]}");
    else
      print("Sheldon detesta a fruta ${fruits[i]}");
  }
}
