import 'dart:io';

void main() {
  List<int> inputs = stdin.readLineSync()!.split(' ').map((String s) => int.parse(s)).toList();
  int E = inputs[0];
  int F = inputs[1];
  int C = inputs[2];
  
  int total = E + F;
  int count = 0;
  
  while (total >= C) {
    int temp = total ~/ C;
    count += temp;
    total = (total % C) + temp;
  }
  
  print(count);
}
