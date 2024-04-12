import 'dart:io';

void main() {
  int n;
  int t=int.parse(stdin.readLineSync()!); // Read and ignore the first line (number of test cases)
  bool sp = false;
  
  for(int i=0;i<t;i++) {
    n = int.parse(stdin.readLineSync()!);
    if (sp) print('');
    sp = true;
    
    List<String> che = [];
    for (int i = 0; i < n; i++) {
      che.add(stdin.readLineSync()!);
    }
    
    int u = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < u; i++) {
      String str = stdin.readLineSync()!;
      bool harm = false;
      
      for (int j = 0; j < n; j++) {
        int found = str.indexOf(che[j]);
        if (found != -1) {
          int index = found + che[j].length;
          if (str.length > index && 
              ((str.codeUnitAt(index) >= 97 && str.codeUnitAt(index) <= 122) ||
              (str.codeUnitAt(index) >= 48 && str.codeUnitAt(index) <= 57))) {
            continue;
          }
          print('Abortar');
          harm = true;
          break;
        }
      }
      
      if (!harm) print('Prossiga');
    }
  }
}
