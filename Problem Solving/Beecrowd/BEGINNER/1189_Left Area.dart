import 'dart:io';

void main() {
  double result = 0.0;
  List<List<double>> array = List.generate(12, (_) => List.filled(12, 0.0));
  var T;
  var p = 0, q = 4;

  T = stdin.readLineSync()!;
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++)
      array[i][j] = double.parse(stdin.readLineSync()!);
  }

  for (int i = 1; i < 11; i++) {
    if (i <= 5) {
      for (int j = 0; j <= p; j++) 
      result += array[i][j];
      p++;
    } else if (i >= 6) {
      for (int j = 0; j <= q; j++) 
      result += array[i][j];
      q--;
    }
  }

  if (T[0] == 'S') {
    print(result.toStringAsFixed(1));
  } else if (T[0] == 'M') {
    result = result / 30.0;
    print(result.toStringAsFixed(1));
  }
}
