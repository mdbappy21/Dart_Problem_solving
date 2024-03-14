import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- != 0) {
    List<int> nm = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    int n = nm[0];
    int m = nm[1];
    BigInt power = BigInt.from(n).pow(m);
    String result = power.toString();
    int len = result.length;
    print(len);
  }
}
