import 'dart:io';

void main() {
  List<int> ed = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int e = ed[0];
  int d = ed[1];
  if (e > d) {
    print("Eu odeio a professora!");
  } else if ((d - e) >= 3) {
    print("Muito bem! Apresenta antes do Natal!");
  } else if ((e + 2) < 24) {
    print("Parece o trabalho do meu filho!\nTCC Apresentado!");
  } else {
    print("Parece o trabalho do meu filho!\nFail! Entao eh nataaaaal!");
  }
}
