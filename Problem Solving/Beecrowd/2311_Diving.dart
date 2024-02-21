import 'dart:io';

void main() {
  int tst, i, j;
  String name;
  double dif;

  tst = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= tst; i++) {
    double max = -10.00, min = 100.00, ans = 0.00;

    name = stdin.readLineSync()!;
    dif = double.parse(stdin.readLineSync()!);

    List<double> scores = stdin.readLineSync()!.split(" ").map((s) => double.parse(s)).toList();

    for (j = 0; j < 7; j++) {
      if (scores[j] > max) max = scores[j];
      if (scores[j] < min) min = scores[j];
      ans += scores[j];
    }

    ans -= (max + min);
    ans *= dif;

    print("$name ${ans.toStringAsFixed(2)}");
  }
}
