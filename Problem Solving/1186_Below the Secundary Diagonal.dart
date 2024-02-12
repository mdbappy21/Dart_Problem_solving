import 'dart:io';

void main() {
  double result = 0.0;
  List<List<double>> array = List.generate(12, (_) => List.filled(12, 0.0));
  
  String T;

  T = stdin.readLineSync()!;
  for (int i = 0; i <= 11; i++) {
    for (int j = 0; j <= 11; j++) array[i][j] = double.parse(stdin.readLineSync()!);
  }

  int p=10;
  for (int i = 1; i < 12; i++) {
    for (int j = 11; j > p; j--) 
    result += array[i][j];
    p--;
  }

  if (T[0] == 'S') {
    print('${result.toStringAsFixed(1)}');
  } else if (T[0] == 'M') {
    result = result / 66.0;
    print('${result.toStringAsFixed(1)}');
  }
}
