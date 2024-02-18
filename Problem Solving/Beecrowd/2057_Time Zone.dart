import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int s = int.parse(input[0]);
  int t = int.parse(input[1]);
  int f = int.parse(input[2]);

  int ans = s + t + f;

  if (ans < 0) {
    ans = 24 + ans;
  }

  print(ans % 24);
}
