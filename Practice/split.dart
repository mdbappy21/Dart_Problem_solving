import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(RegExp(r'[.-\s]'));
  //split . for . 
  //split - for -
  //split\s for space
  print(input[0]);
  print(input[1]);
  print(input[2]);
  print(input[3]);
}
