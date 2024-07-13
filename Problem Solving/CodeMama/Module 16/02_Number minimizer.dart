import 'dart:io';

String minimizeLargeInteger(String S, int K) {
  List<String> SList = S.split('');
  
  int i = 0;
  while (K > 0 && i < SList.length) {
    if (i == 0 && SList[i] != '1') {
      SList[i] = '1';
      K -= 1;
    } else if (i > 0 && SList[i] != '0') {
      SList[i] = '0';
      K -= 1;
    }
    i += 1;
  }
  
  String minimizedNumber = SList.join('');
  
  return minimizedNumber;
}

void main() {
  String inputLine = stdin.readLineSync()!.trim();
  List<String> parts = inputLine.split(' ');
  String S = parts[0];
  int K = int.parse(parts[1]);
  
  String minimizedNumber = minimizeLargeInteger(S, K);
  
  print("Min = $minimizedNumber");
}
