import 'dart:io';

void main() {
  const int MAXSIZE = 101;
  List<List<int>> matriz =
      List.generate(MAXSIZE, (_) => List.filled(MAXSIZE, 0));
  List<List<int>> memoria =
      List.generate(MAXSIZE, (_) => List.filled(MAXSIZE, -1));

  int tamMatriz = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= tamMatriz; ++i) {
    List<int> row = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    for (int j = 1; j <= tamMatriz; ++j) {
      matriz[i][j] = row[j - 1];
    }
  }

  stdout.write('${calcula(tamMatriz, 1, matriz, memoria)}\n');
}

int calcula(
    int linha, int coluna, List<List<int>> matriz, List<List<int>> memoria) {
  if (memoria[linha][coluna] != -1) {
    return memoria[linha][coluna];
  }

  if (linha == 1) {
    return memoria[linha][coluna] = matriz[linha][coluna];
  }

  int soma = 0;
  for (int i = 0; i < linha; ++i) {
    soma += matriz[linha][coluna + i];
  }

  return memoria[linha][coluna] = soma +
      mim(calcula(linha - 1, coluna, matriz, memoria),
          calcula(linha - 1, coluna + 1, matriz, memoria));
}

int mim(int a, int b) {
  return (a < b) ? a : b;
}
