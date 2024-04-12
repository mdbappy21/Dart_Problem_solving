import 'dart:io';

void main() {
  while (true) {
    String? pergunta = stdin.readLineSync();
    if (pergunta == null || pergunta.isEmpty) break;

    if (pergunta == "esquerda")
      print("ingles");
    else if (pergunta == "direita")
      print("frances");
    else if (pergunta == "nenhuma")
      print("portugues");
    else if (pergunta == "as duas")
      print("caiu");
  }
}
