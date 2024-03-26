import 'dart:io';

void main() {
  int l1, l2, r1, r2;
  List<int> fourInteger =
      stdin.readLineSync()!.split(" ").map(int.parse).toList();
  l1 = fourInteger[0];
  r1 = fourInteger[1];
  l2 = fourInteger[2];
  r2 = fourInteger[3];

  for (int i = l1; i < l2; i++) stdout.write("$i ");

  for (int i = r2 + 1; i < r1; i++) stdout.write("$i ");
  print(r1);
}
