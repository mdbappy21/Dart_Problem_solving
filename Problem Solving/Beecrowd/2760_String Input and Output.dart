import 'dart:io';

void main() {
  String var1 = stdin.readLineSync()!;
  String var2 = stdin.readLineSync()!;
  String var3 = stdin.readLineSync()!;

  print('$var1$var2$var3');
  print('$var2$var3$var1');
  print('$var3$var1$var2');

  print(var1.substring(0, var1.length < 10 ? var1.length : 10) +
      var2.substring(0, var2.length < 10 ? var2.length : 10) +
      var3.substring(0, var3.length < 10 ? var3.length : 10));
}
