import 'dart:io';
import 'dart:math';

void main() {
  List<int> n = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  n.sort();
  if (n[2] >= n[0] + n[1])
    print("Invalido");
  else {
    if (n[0] != n[1] && n[2] != n[1] && n[0] != n[2])
      print("Valido-Escaleno");
    else if (n[0] == n[1] && n[1] == n[2])
      print("Valido-Equilatero");
    else
      print("Valido-Isoceles");
    if (pow(n[2], 2) == (pow(n[0], 2) + pow(n[1], 2)))
      print("Retangulo: S");
    else
      print("Retangulo: N");
  }
}
