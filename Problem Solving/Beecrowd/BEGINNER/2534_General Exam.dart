// import 'dart:io';

// void main() {
//   int N, Q;
//   while (true) {
//     List<String> numberOfCQ = stdin.readLineSync()!.split(" ");
//     if (numberOfCQ[0] == "EOF" || numberOfCQ.length < 2) break;
//     N = int.tryParse(numberOfCQ[0]) ?? -1;
//     if (N == -1) break;
//     Q = int.parse(numberOfCQ[1]);

//     List<int> n = List.generate(N, (_) => 0);

//     for (int i = 0; i < N; i++) {
//       String input = stdin.readLineSync()!;
//       int inputValue = int.parse(input);
//       n[i]=(inputValue);
//     }
//     n.sort((a, b) => b.compareTo(a));

//     for (int i = 0; i < Q; i++) {
//       String input = stdin.readLineSync()!;

//       int q = int.parse(input);
//       print(n[q - 1]);
//     }
//   }
// }
import 'dart:io';

void main() {
  int N = 0, Q = 0;
  while (true) {
    List<String> numberOfCQ = stdin.readLineSync()?.split(" ") ?? [];
    if (numberOfCQ.isEmpty || numberOfCQ.length < 2 || numberOfCQ[0] == "EOF") {
      break;
    }
    N = int.tryParse(numberOfCQ[0]) ?? -1;
    if (N <= 0) break;
    Q = int.tryParse(numberOfCQ[1]) ?? -1;
    if (Q <= 0) break;

    List<int> n = List.generate(N, (_) => 0);

    for (int i = 0; i < N; i++) {
      String? input = stdin.readLineSync();
      if (input == null) {
        break;
      }
      int inputValue = int.tryParse(input) ?? 0;
      n[i] = inputValue;
    }
    n.sort((a, b) => b.compareTo(a));

    for (int i = 0; i < Q; i++) {
      String? input = stdin.readLineSync();
      if (input == null) {
        break;
      }
      int q = int.tryParse(input) ?? 0;
      if (q > 0 && q <= N) {
        print(n[q - 1]);
      } else {
        print("Invalid query: $q");
      }
    }
  }
}
