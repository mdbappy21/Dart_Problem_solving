import 'dart:math';
import 'dart:io';

int largestCombination(List<int> candidates) {
  int maxCombinationSize = 0;
  for (int bitPosition = 0; bitPosition < 32; bitPosition++) {
    int count = 0;
    for (int candidate in candidates) {
      if ((candidate & (1 << bitPosition)) != 0) {
        count++;
      }
    }
    maxCombinationSize = max(maxCombinationSize, count);
  }

  return maxCombinationSize;
}

void main() {
  List<int> candidates =
      stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int result = largestCombination(candidates);
  print(result);
}
