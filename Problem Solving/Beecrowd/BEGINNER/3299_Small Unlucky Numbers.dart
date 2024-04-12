import 'dart:io';

void main() {
  String unlucky = stdin.readLineSync()!;

  if (unlucky.contains("13"))
    print("$unlucky es de Mala Suerte");
  else
    print("$unlucky NO es de Mala Suerte");
}
