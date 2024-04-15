import 'dart:io';

void main() {
  while (true) {
    int resultado = 0;
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;
    List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();

    if (v.length == 2) {
      if (v[0] != v[1]) resultado = 2;
    } else {
      int p0 = v[0];
      int p1 = v[1];

      for (int j = 2; j < v.length; j++) {
        int v2 = v[j];
        if (((v[1] > v[0]) && (v[1] > v2)) || ((v[1] < v[0]) && (v[1] < v2)))
          ++resultado;
        v[0] = v[1];
        v[1] = v2;
      }

      if ((p0 > p1 && p0 > v[v.length - 1]) ||
          (p0 < p1 && p0 < v[v.length - 1])) ++resultado;

      if ((v[v.length - 1] > v[0] && v[v.length - 1] > p0) ||
          (v[v.length - 1] < v[0] && v[v.length - 1] < p0)) ++resultado;
    }
    print(resultado);
  }
}
