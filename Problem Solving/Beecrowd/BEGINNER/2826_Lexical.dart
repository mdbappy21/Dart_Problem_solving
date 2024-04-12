import 'dart:io';

void main() {
  String word1 = stdin.readLineSync()!;
  String word2 = stdin.readLineSync()!;
  if (word1 == word2) {
    print(word1);
    print(word2);
  } else if (word1[0].codeUnitAt(0) > word2[0].codeUnitAt(0)) {
    print(word2);
    print(word1);
  } else if (word1[0].codeUnitAt(0) < word2[0].codeUnitAt(0)) {
    print(word1);
    print(word2);
  } else {
    int len1 = word1.length;
    int len2 = word2.length;
    if (len2 > len1) {
      print(word1);
      print(word2);
    } else {
      print(word2);
      print(word1);
    }
  }
}
