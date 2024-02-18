import 'dart:io';

void main() {
  int cnt = 0;
  while (true) {
    String? sbStr = stdin.readLineSync();
    if (sbStr == null|| sbStr=="EOF") {
      break;
    }
    String str = stdin.readLineSync()!;

    int total = 0, sve = 0, tmp;
    int sbLength = sbStr.length, strLength = str.length;

    for (int i = 0; i <= strLength - sbLength; i++) {
      if (str[i] == sbStr[0]) {
        int cnt2 = 1;
        tmp = i + 1;

        for (int k = i + 1, l = 1; l < sbLength; l++, k++) {
          if (str[k] == sbStr[l]) {
            cnt2++;
          } else {
            break;
          }
        }

        if (cnt2 == sbLength) {
          total++;
          sve = tmp;
        }
      }
    }

    print("Caso #${++cnt}:");
    if (total == 0) {
      print("Nao existe subsequencia\n");
    } else {
      print("Qtd.Subsequencias: $total");
      print("Pos: $sve\n");
    }
  }
}
