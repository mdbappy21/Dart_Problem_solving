import 'dart:io';

void main() {
  int t;
  t = int.parse(stdin.readLineSync()!);

  for(int i=0;i<t;i++) {
    String f = stdin.readLineSync()!;
    String s = stdin.readLineSync()!;

    if (f[1] == 'e' && s[1] == 'e') {
      print("Sem ganhador");
    } else if (f[1] == 't' && s[1] == 't') {
      print("Aniquilacao mutua");
    } else if (f[1] == 'a' && s[1] == 'a') {
      print("Ambos venceram");
    } else if (f[1] == 't' || (f[1] == 'e' && s[1] == 'a')) {
      print("Jogador 1 venceu");
    } else {
      print("Jogador 2 venceu");
    }
  }
}
