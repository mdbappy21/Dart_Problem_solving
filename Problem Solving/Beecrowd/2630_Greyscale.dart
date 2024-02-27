import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  int I = 1;

  while (t-- > 0) {
    String str = stdin.readLineSync()!;
    List<double> a = stdin.readLineSync()!.split(' ').map(double.parse).toList();

    if (str[0] == 'e') {
      a[0] = (a[0] * 30) / 100;
      a[1] = (a[1] * 59) / 100;
      a[2] = (a[2] * 11) / 100;
      int f = a.reduce((value, element) => value + element).toInt();
      print('Caso #${I++}: $f');
    } else if (str.length == 4) {
      int m = (a.reduce((value, element) => value + element) ~/ 3).toInt();
      print('Caso #${I++}: $m');
    } else {
      a.sort();
      int f = (str[1] == 'i') ? a[0].toInt() : a[2].toInt();
      print('Caso #${I++}: $f');
    }
  }
}
