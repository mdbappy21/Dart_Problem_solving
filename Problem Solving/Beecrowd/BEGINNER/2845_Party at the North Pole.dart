import 'dart:io';

void main() {
  var input = stdin.readLineSync()!;
  var N = int.parse(input);
  var A = List<int>.filled(N, 0);
  var scanner = Scanner(stdin.readLineSync()!);

  for (var i = 0; i < N; i++) {
    A[i] = scanner.nextInt();
  }

  A.sort();

  if (A.length == 1 && A[0] == 1) {
    print(2);
    return;
  }

  for (var i = A[A.length - 1]; i < 1000000000; i++) {
    var bol = true;
    for (var j in A) {
      if (mdc(j, i) != 1) {
        bol = false;
        break;
      }
    }
    if (bol) {
      print(i);
      break;
    }
  }
}

int mdc(int a, int b) {
  if (a == 0) return b;
  return mdc(b % a, a);
}

class Scanner {
  late String _buffer;
  late List<String> _tokens;
  late int _pointer;

  Scanner(String input) {
    _buffer = input;
    _tokens = _buffer.split(RegExp(r'\s+'));
    _pointer = 0;
  }

  String next() {
    return _tokens[_pointer++];
  }

  int nextInt() {
    return int.parse(next());
  }
}
