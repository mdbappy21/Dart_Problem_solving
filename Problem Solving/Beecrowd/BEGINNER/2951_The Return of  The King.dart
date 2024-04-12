import 'dart:io';

void main() {
  List<int> run = List<int>.filled(200, 0);
  int ans = 0;

  String? input = stdin.readLineSync();
  List<String> inputs = input!.split(' ');
  int n = int.parse(inputs[0]);
  int m = int.parse(inputs[1]);

  while (n-- > 0) {
    input = stdin.readLineSync()!;
    inputs = input.split(' ');
    int c = inputs[0].codeUnitAt(0);
    int x = int.parse(inputs[1]);
    run[c] = x;
  }

  int x = int.parse(stdin.readLineSync()!);
  List<String> character = stdin.readLineSync()!.split(" ");

  for (int i = 0; i < x; i++) {
    int c = character[i].codeUnitAt(0);
    ans += run[c];
  }

  print('$ans');
  print(ans >= m ? 'You shall pass!' : 'My precioooous');
}
