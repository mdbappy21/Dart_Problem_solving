import 'dart:io';

void main() {
  String position = stdin.readLineSync()!;
  int initialRow = int.parse(position[1]);
  int tergetRow = int.parse(position[4]);

  int initialColumn = position[0].codeUnitAt(0);
  int tergetColumn = position[3].codeUnitAt(0);

  if (tergetRow == (initialRow - 1) || tergetRow == (initialRow + 1)) {
    if (tergetColumn == (initialColumn - 2) ||
        tergetColumn == (initialColumn + 2))
      print("VALIDO");
    else
      print("INVALIDO");
  } else if (tergetRow == (initialRow - 2) || tergetRow == (initialRow + 2)) {
    if (tergetColumn == (initialColumn - 1) ||
        tergetColumn == (initialColumn + 1))
      print("VALIDO");
    else
      print("INVALIDO");
  } else
    print("INVALIDO");
}
