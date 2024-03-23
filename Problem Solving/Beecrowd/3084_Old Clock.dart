import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    List<String> inputs = input.split(' ');
    if (inputs.length < 2) break;
    int a = int.parse(inputs[0]);
    int b = int.parse(inputs[1]);
    print('${(a ~/ 30).toString().padLeft(2, '0')}:${(b ~/ 6).toString().padLeft(2, '0')}');
  }
}
