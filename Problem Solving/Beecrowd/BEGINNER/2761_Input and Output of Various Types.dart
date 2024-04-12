//dart code gives me one test case error.
import 'dart:io';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var a = int.parse(input[0]);
  var b = double.parse(input[1]);
  var c = input[2];
  var d = input.sublist(3).join(' ');

  b = double.parse(b.toStringAsFixed(6));
  print('$a$b$c$d');
  print('$a\t$b\t$c\t$d');
  print('${a.toString().padLeft(10)}${b.toString().padLeft(10)}$c${d.padLeft(10)}');
}
// #include <stdio.h>

// void main ()
// {

// 	int a;
// 	float b;
// 	char c;
// 	char d[50];

// 	scanf("%d %f %c %s", &a, &b, &c, d);

// 	printf("%d%f%c%s\n", a, b, c, d);
// 	printf("%d\t%f\t%c\t%s\n", a, b, c, d);
// 	printf("%10d%10f%10c%10s\n", a, b, c, d);

// }