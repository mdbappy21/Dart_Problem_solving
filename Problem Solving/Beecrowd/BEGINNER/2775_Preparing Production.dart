import 'dart:io';

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null) break;
    int N = int.parse(line);
    List<int> v = [];
    List<int> cost = [];
    line = stdin.readLineSync()!;
    v.addAll(line.split(' ').map(int.parse));
    line = stdin.readLineSync()!;
    cost.addAll(line.split(' ').map(int.parse));

    int totalCost = 0;
    for (int i = 0; i < N - 1; i++) {
      for (int j = 0; j < N - i - 1; j++) {
        if (v[j] > v[j + 1]) {
          int temp = v[j];
          v[j] = v[j + 1];
          v[j + 1] = temp;
          temp = cost[j];
          cost[j] = cost[j + 1];
          cost[j + 1] = temp;
          totalCost += cost[j] + cost[j + 1];
        }
      }
    }

    print(totalCost);
  }
}
