import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<int> sheep = [];

  List<String> sheepNumber = stdin.readLineSync()!.split(" ");
  int ans = 0;
  int sumSheep = 0;

  for (int i = 0; i < N; i++) {
    int sheepCount = int.parse(sheepNumber[i]);
    sumSheep += sheepCount;

    if (i == 0 && sheepCount % 2 == 0) {
      ans++;
      sheepCount--;
    } else if (i == N - 1 && sheepCount % 2 == 1) {
      ans++;
      sheepCount--;
    }

    ans += sheepCount ~/ 2;
    sheep.add(sheepCount);
  }

  int i = 0;
  while (i >= 0 && i < N) {
    if (sheep[i] % 2 == 1) {
      sumSheep--;
      sheep[i]--;
      i++;
    } else {
      if (sheep[i] > 0) {
        sumSheep--;
        sheep[i]--;
      }
      i--;
    }
  }

  print('$ans $sumSheep');
}
