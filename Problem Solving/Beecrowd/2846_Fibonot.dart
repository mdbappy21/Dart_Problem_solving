import 'dart:io';

const int MAXSIZE = 100100;

List<int> fibo = List.filled(MAXSIZE, 0);
List<int> _fibonot = List.filled(MAXSIZE, 0);

void fib() {
  fibo[0] = 0;
  fibo[1] = 1;
  for (int i = 2; i < MAXSIZE; ++i) {
    fibo[i] = fibo[i - 1] + fibo[i - 2];
  }

  for (int i = 1, j = 2, k = 1; k < MAXSIZE; ++i) {
    if (fibo[j] != i) {
      _fibonot[k++] = i;
    } else {
      ++j;
    }
  }
}

void main() {
  fib();
  int n = int.parse(stdin.readLineSync()!);
  print(_fibonot[n]);
}
