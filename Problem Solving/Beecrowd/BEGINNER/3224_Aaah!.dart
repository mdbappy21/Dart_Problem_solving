import 'dart:io';

void main() {
  int johnSay = stdin.readLineSync()!.length;
  int doctorWant = stdin.readLineSync()!.length;

  if (johnSay >= doctorWant) {
    print('go');
  } else {
    print('no');
  }
}
