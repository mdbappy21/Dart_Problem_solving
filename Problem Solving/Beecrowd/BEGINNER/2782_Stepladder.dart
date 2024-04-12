import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> sequence = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int qtsEscadinhas = 1;
  int anterior = 0;
  if (n > 2) anterior = sequence[0] - sequence[1];

  for (int i = 2; i < n; ++i) {
    int atual = sequence[i - 1] - sequence[i];
    if (atual != anterior) {
      anterior = atual;
      qtsEscadinhas++;
    }
  }

  print(qtsEscadinhas);
}
