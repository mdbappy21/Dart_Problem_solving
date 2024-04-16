import 'dart:io';

void main() {
  while (true) {
    List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int a = input[0];
    int b = input[1];
    int c = input[2];
    int d = input[3];
    
    if (a == 0 && b == 0 && c == 0 && d == 0) break;
    
    int inicio, fim;
    if (a == 0) {
      inicio = 24 * 60 + b;
    } else {
      inicio = a * 60 + b;
    }

    if (c == 0) {
      fim = 24 * 60 + d;
    } else {
      fim = c * 60 + d;
    }

    if (fim > inicio) {
      print(fim - inicio);
    } else {
      print(24 * 60 - (inicio - fim));
    }
  }
}
