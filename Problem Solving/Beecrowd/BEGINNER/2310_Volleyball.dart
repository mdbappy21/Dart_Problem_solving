import 'dart:io';

void main() {
  int n, s, b, a, s1, b1, a1, i;
  double sum_s = 0.00, sum_b = 0.00, sum_a = 0.00;
  double sum_s1 = 0.00, sum_b1 = 0.00, sum_a1 = 0.00;
  double ans_s, ans_b, ans_a;
  String name;
  n = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= n; i++) {
    name = stdin.readLineSync()!;
    List<int> values = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    s = values[0];
    b = values[1];
    a = values[2];

    List<int> values1 = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    s1 = values1[0];
    b1 = values1[1];
    a1 = values1[2];

    sum_s += s;
    sum_b += b;
    sum_a += a;
    sum_s1 += s1;
    sum_b1 += b1;
    sum_a1 += a1;
  }

  ans_s = (sum_s1 / sum_s) * 100.00;
  ans_b = (sum_b1 / sum_b) * 100.00;
  ans_a = (sum_a1 / sum_a) * 100.00;
  name = "Pontos de";
  print("$name Saque: ${ans_s.toStringAsFixed(2)} %.");
  print("Pontos de Bloqueio: ${ans_b.toStringAsFixed(2)} %.");
  print("Pontos de Ataque: ${ans_a.toStringAsFixed(2)} %.");
}
