import 'dart:io';

void swap(List copos, pos1, pos2) {
  int aux;
  aux = copos[pos1];
  copos[pos1] = copos[pos2];
  copos[pos2] = aux;
}

void main() {
  int n, mov;
  List<int> copos = [0, 0, 0];
  int inicio;
  n = int.parse(stdin.readLineSync()!);
  inicio = stdin.readLineSync()!.codeUnitAt(0);

  copos[inicio - 65] = 1;

  while (n > 0) {
    mov = int.parse(stdin.readLineSync()!);
    switch (mov) {
      case 1:
        if (copos[0] == 1 || copos[1] == 1) swap(copos, 0, 1);
        break;
      case 2:
        if (copos[1] == 1 || copos[2] == 1) swap(copos, 1, 2);
        break;
      case 3:
        if (copos[0] == 1 || copos[2] == 1) swap(copos, 0, 2);
        break;
    }

    n--;
  }

  if (copos[0] == 1)
    print("A");
  else if (copos[1] == 1)
    print("B");
  else
    print("C");
}
