import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> ab = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int time = ab[0] + ab[1];
  if (n >= time)
    print("Farei hoje!");
  else
    print("Deixa para amanha!");
}
