import 'dart:io';

void main() {
  int tst, Dab, Gab, a1, a2, d1, d2, l1, l2, bns;
  tst = int.parse(stdin.readLineSync()!);
  
  while (tst-- != 0) {
    bns = int.parse(stdin.readLineSync()!);
    
    List<String> line1 = stdin.readLineSync()!.split(" ");
    a1 = int.parse(line1[0]);
    d1 = int.parse(line1[1]);
    l1 = int.parse(line1[2]);

    List<String> line2 = stdin.readLineSync()!.split(" ");
    a2 = int.parse(line2[0]);
    d2 = int.parse(line2[1]);
    l2 = int.parse(line2[2]);

    Dab = (a1 + d1) ~/ 2; // Use ~/ for integer division
    if (l1 % 2 == 0) Dab += bns;
    Gab = (a2 + d2) ~/ 2; // Use ~/ for integer division
    if (l2 % 2 == 0) Gab += bns;

    if (Dab == Gab) {
      print("Empate");
    } else {
      print((Dab > Gab) ? "Dabriel" : "Guarte");
    }
  }
}
