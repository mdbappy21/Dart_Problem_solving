import 'dart:io';

void main() {
  int n;
  String c;
  List<int> ans = [0, 0, 0, 0, 0];

  n = int.parse(stdin.readLineSync()!);

  while (n-- != 0) {
    List<String> nameC = stdin.readLineSync()!.split(" ");
    c = nameC[1];

    if (c == 'X')
      ans[0]++;
    else if (c == 'H')
      ans[1]++;
    else if (c == 'E')
      ans[2]++;
    else if (c == 'A')
      ans[3]++;
    else
      ans[4]++;
  }

  print("${ans[0]} Hobbit(s)");
  print("${ans[1]} Humano(s)");
  print("${ans[2]} Elfo(s)");
  print("${ans[3]} Anao(oes)");
  print("${ans[4]} Mago(s)");
}
