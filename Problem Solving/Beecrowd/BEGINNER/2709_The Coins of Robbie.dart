import 'dart:io';
import 'dart:math';

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    int M = int.tryParse(input) ?? -1;
    if (M == -1) break;
    List<int> coins = [];

    for (int i = 0; i < M; i++) {
      coins.add(int.parse(stdin.readLineSync()!));
    }

    int N = int.parse(stdin.readLineSync()!);
    int sum = 0;
    for (int i = 0; i < M; i += N) {
      sum += coins[M - 1 - i];
    }

    if (isPrime(sum)) {
      print("You’re a coastal aircraft, Robbie, a large silver aircraft.");
    } else {
      print("Bad boy! I’ll hit you.");
    }
  }
}
