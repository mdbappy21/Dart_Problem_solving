import 'dart:io';

void main() {
  String str;
  int count = 0;
  
  str = stdin.readLineSync()!;
  
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '1') {
      count++;
    }
  }

  if (count % 2 == 0) {
    str += '0';
  } else {
    str += '1';
  }

  print(str);
}
