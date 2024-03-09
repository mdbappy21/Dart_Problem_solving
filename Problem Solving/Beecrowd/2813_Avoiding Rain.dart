import 'dart:io';

void main() {
  final N = int.parse(stdin.readLineSync()!);
  final inputLines = List.generate(N, (_) => stdin.readLineSync()!.split(' '));
  int casaComprado = 0;
  int casaSobrando = 0;
  int trabComprado = 0;
  int trabSobrando = 0;
  for (int i = 0; i < N; i++) {
    final irProTrabalho = inputLines[i][0];
    final irPraCasa = inputLines[i][1];
    if (irProTrabalho.toLowerCase() == 'chuva' && casaSobrando == 0) {
      casaComprado += 1;
      trabSobrando += 1;
    } else if (irProTrabalho.toLowerCase() == 'chuva' && casaSobrando > 0) {
      trabSobrando += 1;
      casaSobrando -= 1;
    }
    if (irPraCasa.toLowerCase() == 'chuva' && trabSobrando == 0) {
      trabComprado += 1;
      casaSobrando += 1;
    } else if (irPraCasa.toLowerCase() == 'chuva' && trabSobrando > 0) {
      casaSobrando += 1;
      trabSobrando -= 1;
    }
  }
  print('$casaComprado $trabComprado');
}
