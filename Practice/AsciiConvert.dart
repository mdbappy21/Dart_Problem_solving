import 'dart:io';

void main() {
  stdout.write("Enter character to know Ascii value : ");
  String value = stdin.readLineSync()!;
  int len=value.length;
  
  for(int i =0;i<len;i++){
      int AsciiValue = value[i].codeUnitAt(0);
    print("Ascii value of ${value[i]} position $AsciiValue");
  }
}
