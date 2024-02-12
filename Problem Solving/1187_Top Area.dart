import 'dart:io';

void main() {
  List<List<double>> array = List.generate(12, (_) => List.filled(12, 0.0));

  var T = stdin.readLineSync();

  for (int i = 0; i < 12; i++)
    for (int j = 0; j < 12; j++)
      array[i][j] = double.parse(stdin.readLineSync()!);

  var result = 0.0;
  int p = 11, q = 1;

  for (int i = 0; i < 5; i++) {
    for (int j = q; j < p; j++) {
      result = result + array[i][j];
    }
    q++;
    p--;
  }

  if (T == 'S')
    print(result.toStringAsFixed(1));
  else if (T == 'M') {
    result /= 30.0;
    print(result.toStringAsFixed(1));
  }
}
