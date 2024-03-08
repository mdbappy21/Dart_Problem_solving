import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> iccanonif = [];
  iccanonif.add(1);
  iccanonif.add(1);
  for (int i = 0; i < n - 2; i++) {
    iccanonif.add(iccanonif[i] + iccanonif[i + 1]);
  }
  iccanonif.removeAt(0);
  iccanonif.removeAt(0);
  var reault = iccanonif.reversed;
  for (int i in reault) {
    stdout.write("$i ");
  }
  if (n == 1)
    stdout.write("1\n");
  else
    stdout.write("1 1\n");
}
