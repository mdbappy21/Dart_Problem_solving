import 'dart:io';

void main() {
  const int MAXSIZE = 101;

  List<bool> figCarimbada = List.filled(MAXSIZE, false);
  List<bool> figPossuida = List.filled(MAXSIZE, false);

  List<int> inputs = [];
  inputs.addAll(stdin.readLineSync()!.split(' ').map(int.parse));
  int qtsFigurinhas = inputs[0];
  int qtsFigurinhasCarimbadas = inputs[1];
  int qtsFigurinhasCompradas = inputs[2];

  List<int> tmp = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  for (int i = 0; i < qtsFigurinhasCarimbadas; ++i) {
    figCarimbada[tmp[i]] = true;
  }

  List<int> tmp1 = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  for (int i = 0; i < qtsFigurinhasCompradas; ++i) {
    figPossuida[tmp1[i]] = true;
  }

  int qtsFigurinhasFaltantes = qtsFigurinhasCarimbadas;
  for (int i = 1; i <= qtsFigurinhas; ++i) {
    if (figPossuida[i] && figCarimbada[i]) {
      qtsFigurinhasFaltantes--;
    }
  }

  print(qtsFigurinhasFaltantes);
}
