import 'dart:io';

void main() {
  int N, M, net, cndtn;
  List<int> bill = [7,12,22,52,102,15,25,55,105,30,60,110,70,120,150];
  while (true) {
    List<int> price = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    N = price[0];
    M = price[1];
    if (N == 0 && M == 0) break;
    net = M - N;
    cndtn=0;
    for (int i = 0; i < 15; i++) {
      if (bill[i] == net) {
        cndtn = 1;
        break;
      }
    }
    if (cndtn != 0)
      print("possible");
    else
      print("impossible");
  }
}
