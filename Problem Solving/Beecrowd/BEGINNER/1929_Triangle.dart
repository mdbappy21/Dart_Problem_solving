import 'dart:io';

void main() {
  List<String> Triangle = stdin.readLineSync()!.split(" ");
  List<int> triangleLength = [];

  triangleLength.add(int.parse(Triangle[0]));
  triangleLength.add(int.parse(Triangle[1]));
  triangleLength.add(int.parse(Triangle[2]));
  triangleLength.add(int.parse(Triangle[3]));

  triangleLength.sort();
  if (triangleLength[0] + triangleLength[1] > triangleLength[2] ||
      triangleLength[1] + triangleLength[2] > triangleLength[3])
    print("S");
  else
    print("N");
}
