import 'dart:io';

void main() {
  while (true) {
    int n = int.tryParse(stdin.readLineSync()!) ?? -1;
    if (n == -1) break;
    List<int> votes = stdin.readLineSync()!.split(" ").map(int.parse).toList();

    int count = 0;
    for (int i = 0; i < n; i++) if (votes[i] != 0) count++;

    int x = (n * 0.666).ceil();

    if (count >= x) {
      print("impeachment");
    } else {
      print("acusacao arquivada");
    }
  }
}
// import 'dart:io';

// void main() {
//   while (true) {
//     String? line = stdin.readLineSync();
//     if (line == null || line == "EOF") break;

//     int n = int.tryParse(line) ?? -1;
//     if (n == -1) break;

//     List<String> votesLine = stdin.readLineSync()!.split(" ");
//     int count = 0;
//     for (int i = 0; i < n; i++) {
//       int vote = int.tryParse(votesLine[i]) ?? 0;
//       if (vote != 0) count++;
//     }

//     int x = (n * 0.666).ceil();

//     if (count >= x) {
//       print("impeachment");
//     } else {
//       print("acusacao arquivada");
//     }
//   }
// }
