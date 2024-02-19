import 'dart:io';

void main() {
  int n, i, cndtn = 1;
  n = int.parse(stdin.readLineSync()!);
  List<int> ara = [];

  List<String>array=stdin.readLineSync()!.split(" ");
  for (i = 0; i < n; i++) {
    ara.add(int.parse(array[i]));
  }

  if (n == 2 && ara[0] == ara[1]) {
    cndtn = 0;
  } else {
    for (i = 2; i < n; i++) {
      if ((ara[i] >= ara[i - 1] && ara[i - 1] >= ara[i - 2]) ||
          (ara[i] <= ara[i - 1] && ara[i - 1] <= ara[i - 2])) {
        cndtn = 0;
        break;
      }
    }
  }

  print((cndtn == 1) ? "1" : "0");
}
