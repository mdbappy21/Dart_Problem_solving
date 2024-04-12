import 'dart:io';

void main() {
  List<int> vet = [300, 1500, 600, 1000, 150];
  int n, ans;

  ans = 0;
  for (int i = 0; i < 5; ++i) {
    n = int.parse(stdin.readLineSync()!);
    ans += n * vet[i];
  }

  ans += 225;

  print(ans);
}
