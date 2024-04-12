import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- != 0) {
    List<int> nk = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    int n = nk[0];
    int k = nk[1];
    int reault = (n % k) + (n ~/ k);

    print(reault);
  }
}
