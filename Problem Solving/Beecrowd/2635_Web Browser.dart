import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    int N = int.tryParse(input) ?? -1;
    if (N == -1) break;
    
    List<String> data = [];

    for (int i = 0; i < N; i++) {
      String? line = stdin.readLineSync();
      if (line == null) break;
      data.add(line);
    }

    String? qInput = stdin.readLineSync();
    if (qInput == null) break;
    int q = int.tryParse(qInput) ?? 0;
    
    for (int i = 0; i < q; i++) {
      String? query = stdin.readLineSync();
      if (query == null) break;
      int ans = 0, len = 0;
      for (int j = 0; j < N; j++) {
        if (data[j].startsWith(query)) {
          ans++;
          len = len > data[j].length ? len : data[j].length;
        }
      }
      if (ans == 0)
        print("-1");
      else
        print("$ans $len");
    }
  }
}
