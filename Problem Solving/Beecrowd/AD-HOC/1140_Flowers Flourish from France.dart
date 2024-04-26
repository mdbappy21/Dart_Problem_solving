import 'dart:io';

void main() {
  while (true) {
    var line = _getLine();
    if (line.startsWith('*')) break;

    var flag = false;
    var comp = ' ';

    var words = line.split(' ');
    for (var word in words) {
      if (comp == ' ') {
        comp = word[0];
      } else {
        if ((comp == word[0] || comp == word[0].toLowerCase()) &&
            !(word[0].codeUnitAt(0) >= 97 && word[0].codeUnitAt(0) <= 122)) {
          flag = false;
        } else if ((comp == word[0] || comp == word[0].toUpperCase()) &&
            !(word[0].codeUnitAt(0) >= 65 && word[0].codeUnitAt(0) <= 90)) {
          flag = false;
        } else {
          flag = true;
          break;
        }
      }
    }

    print(flag ? 'N' : 'Y');
  }
}

String _getLine() {
  return stdin.readLineSync()!;
}
