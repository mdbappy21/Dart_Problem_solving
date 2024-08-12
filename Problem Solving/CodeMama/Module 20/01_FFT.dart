import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int count = 0, result = 0;
  List<String> string = [];
  List<String> fft = [];

  for (int i = 0; i < n; i++) {
    String input = stdin.readLineSync()!;
    string.add(input);

    if (count == 0 && input[0] == 'F') {
      count = 1;
    } else if (count == 1 && input[0] == 'F') {
      count = 2;
    } else if (count == 2 && input[0] == 'T') {
      result++;
      fft.add(string[i - 2]);
      fft.add(string[i - 1]);
      fft.add(string[i]);
      count = 0;
    } else {
      count = (input[0] == 'F') ? 2 : 0;
    }
  }

  print(result);
  for (int i = 0, j = 0; i < result; i++, j += 3) {
    print("${fft[j]} ${fft[j + 1]} ${fft[j + 2]}");
  }
}
