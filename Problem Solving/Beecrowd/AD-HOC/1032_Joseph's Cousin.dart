import 'dart:io';

List<int> prime = List.filled(3502, 0);

int flavious(int n) {
  int r = 0;
  for (int i = 1; i <= n; i++) {
    r = (r + prime[n - i]) % i;
  }
  return r;
}

bool isPrime(int n) {
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void primeNumbers() {
  int a = 0;
  for (int j = 2; a < 3502; j++) {
    if (isPrime(j)) {
      prime[a] = j;
      a++;
    }
  }
}

void main() {
  primeNumbers();
  while (true) {
    int x = int.parse(stdin.readLineSync()!);
    if (x == 0) break;
    print(flavious(x) + 1);
  }
}
