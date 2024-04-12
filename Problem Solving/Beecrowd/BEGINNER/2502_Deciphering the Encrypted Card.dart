
// import 'dart:io';

// void main() {
//   int c, n;
//   while (true) {
//     List<String> first = stdin.readLineSync()!.split(" ");
//     c = int.tryParse(first[0]) ?? -1;
//     if (c == -1) break;
//     n = int.parse(first[1]);
//     String cipher1, cipher2;
//     cipher1 = stdin.readLineSync()!.toUpperCase();
//     cipher2 = stdin.readLineSync()!.toUpperCase();
//     for (int i = 0; i < n; i++) {
//       List<String> sentence = stdin.readLineSync()!.split('');
//       int len = sentence.length;
//       for (int j = 0; j < len; j++) {
//         for (int k = 0; k < c; k++) {
//           if (sentence[j].toUpperCase() == cipher1[k]) {
//             if (sentence[j] == sentence[j].toLowerCase())
//               sentence[j] = cipher2[k].toLowerCase();
//             else
//               sentence[j] = cipher2[k];
//           } else if (sentence[j].toUpperCase() == cipher2[k]) {
//             if (sentence[j] == sentence[j].toLowerCase())
//               sentence[j] = cipher1[k].toLowerCase();
//             else
//               sentence[j] = cipher1[k];
//           }
//         }
//       }
//       for (String j in sentence) stdout.write(j);
//       print("");
//     }
//     print("");
//   }
// }

import 'dart:io';

void main() {
  while (true) {
    List<String>? first = stdin.readLineSync()?.split(" ");
    if (first == null || first.length < 2) break;

    int c = int.tryParse(first[0]) ?? -1;
    int n = int.tryParse(first[1]) ?? -1;
    if (c <= 0 || n <= 0) break;

    String cipher1 = stdin.readLineSync()?.toUpperCase() ?? '';
    String cipher2 = stdin.readLineSync()?.toUpperCase() ?? '';

    Map<String, String> encryptionMap = {};
    for (int i = 0; i < c; i++) {
      encryptionMap[cipher1[i]] = cipher2[i];
      encryptionMap[cipher2[i]] = cipher1[i];
    }

    for (int i = 0; i < n; i++) {
      String sentence = stdin.readLineSync() ?? '';
      StringBuffer encryptedSentence = StringBuffer();
      for (int j = 0; j < sentence.length; j++) {
        String currentChar = sentence[j].toUpperCase();
        if (encryptionMap.containsKey(currentChar)) {
          String replacementChar = encryptionMap[currentChar]!;
          if (sentence[j] == sentence[j].toLowerCase()) {
            encryptedSentence.write(replacementChar.toLowerCase());
          } else {
            encryptedSentence.write(replacementChar);
          }
        } else {
          encryptedSentence.write(sentence[j]);
        }
      }
      print(encryptedSentence);
    }
    print(""); // Print empty line after each test case
  }
}
