import 'dart:io';

void main() {
  List<int> first = List<int>.filled(2010, 0);

  int n;
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    int m;

    m = int.parse(stdin.readLineSync()!);
    first[m]++;
  }

  for (int i = 1; i <= 2000; i++) {
    if (first[i] > 0) {
      print("$i aparece ${first[i]} vez(es)");
    }
  }
}
