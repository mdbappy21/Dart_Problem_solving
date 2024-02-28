import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int k = int.parse(stdin.readLineSync()!);

  List<int> score = List<int>.generate(n, (_) => int.parse(stdin.readLineSync()!));
  score.sort((a, b) => b.compareTo(a));

  int count = 0;
  for (int i = 0; i < n; i++) {
    count++;
    if (count == k) {
      for (int j = i + 1; j < n; j++) {
        if (score[i] != score[j]) break;
        count++;
      }
      break;
    }
  }

  print(count);
}
