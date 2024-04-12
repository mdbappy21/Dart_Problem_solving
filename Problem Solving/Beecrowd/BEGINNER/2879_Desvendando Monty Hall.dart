import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int ans = 0;
  
  for (int i = 0; i < n; i++) {
    int m = int.parse(stdin.readLineSync()!);
    if (m != 1) {
      ans++;
    }
  }
  print(ans);
}
