import 'dart:io';

void main() {
  int n;

  while (true) {
    String? input=stdin.readLineSync();
    if(input==null)break;
    n=int.parse(input);
    int result=(n / 100).ceil();
    print(result);
  }
}
