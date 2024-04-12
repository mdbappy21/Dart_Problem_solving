import 'dart:io';

void main() {
  const MAXSIZE = 101;

  var qtsFigurinhas = int.parse(stdin.readLineSync()!);
  var figurinhasCompradas = int.parse(stdin.readLineSync()!);

  var album = List<bool>.filled(MAXSIZE, false);

  for (var i = 0; i < figurinhasCompradas; ++i) {
    var tmp = int.parse(stdin.readLineSync()!);
    album[tmp] = true;
  }

  var faltam = 0;
  for (var i = 1; i <= qtsFigurinhas; ++i) {
    if (!album[i]) {
      faltam++;
    }
  }

  print(faltam);
}
