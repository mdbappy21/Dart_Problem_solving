import 'dart:io';

void main() {
  int caseNo = 1;
  while (true) {
    int test_case = int.parse(stdin.readLineSync()!);
    if (test_case == 0) break;

    String str = stdin.readLineSync()!;
    List<int> value = str.split(RegExp(r'[-+\s]')).map(int.parse).toList();
    int ans = value[0];

    List<String> operators = RegExp(r'[+\-]')
        .allMatches(str)
        .map((match) => match.group(0)!)
        .toList();

    for (int i = 0; i < test_case - 1; i++) {
      if (operators[i] == '-')
        ans -= value[i + 1];
      else if (operators[i] == "+") ans += value[i + 1];
    }

    print("Teste $caseNo");
    print("$ans\n");
    caseNo++;
  }
}
