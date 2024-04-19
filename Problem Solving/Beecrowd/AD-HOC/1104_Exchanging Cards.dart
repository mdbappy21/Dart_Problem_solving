import 'dart:io';

void main() {
  var cards1, cards2;
  while (true) {
    var line = stdin.readLineSync();
    if (line == '0 0') break;

    var c1 = stdin.readLineSync()!.split(' ').toSet();
    var c2 = stdin.readLineSync()!.split(' ').toSet();

    cards1 = 0;
    cards2 = 0;

    for (var a in c1) {
      cards1 += !c2.contains(a) ? 1 : 0;
    }

    for (var card in c2) {
      cards2 += !c1.contains(card) ? 1 : 0;
    }

    print(cards1 > cards2 ? cards2 : cards1);
  }
}
