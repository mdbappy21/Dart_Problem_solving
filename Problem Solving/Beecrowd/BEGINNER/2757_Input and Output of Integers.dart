import 'dart:io';

void main() {
  int a, b, c;

  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);
  c = int.parse(stdin.readLineSync()!);
  if (a >= 0) {
    print("A = $a, B = $b, C = $c");
    print("A = ${a.toString().padLeft(10,)}, B = ${b.toString().padLeft(10)}, C = ${c.toString().padLeft(10)}");
    print("A = ${a.toString().padLeft(10, '0')}, B = ${b.toString().padLeft(10, '0')}, C = ${c.toString().padLeft(10, '0')}");
    print("A = ${a.toString().padRight(10,)}, B = ${b.toString().padRight(10)}, C = ${c.toString().padRight(10)}");
  }
  else{
    print("A = $a, B = $b, C = $c");
    print("A = ${a.toString().padLeft(10,)}, B = ${b.toString().padLeft(10)}, C = ${c.toString().padLeft(10)}");
    a=a.abs();
    print("A = -${a.toString().padLeft(9, '0')}, B = ${b.toString().padLeft(10, '0')}, C = ${c.toString().padLeft(10, '0')}");
    print("A = -${a.toString().padRight(9,)}, B = ${b.toString().padRight(10)}, C = ${c.toString().padRight(10)}");
  }
}
