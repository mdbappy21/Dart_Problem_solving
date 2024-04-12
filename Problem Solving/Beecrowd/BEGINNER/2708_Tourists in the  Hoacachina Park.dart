import 'dart:io';

void main() {
  int touristsLeft = 0;
  int jeepsLeft = 0;

  while (true) {
    List<String>input=stdin.readLineSync()!.split(" ");
    String movement = input[0];
    if (movement == 'ABEND') break;

    int tourists = int.parse(input[1]);

    if (movement == 'SALIDA') {
      jeepsLeft++;
      touristsLeft += tourists;
    } else if (movement == 'VUELTA') {
      jeepsLeft--;
      touristsLeft -= tourists;
    }
  }

  print('$touristsLeft');
  print('$jeepsLeft');
}
