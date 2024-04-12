import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  while (a-- != 0) {
    int x, y;
    String input = stdin.readLineSync()!;
    List<String> parts = input.split(" ");
    x = int.parse(parts[0]);
    y = int.parse(parts[1]);
    x = x + y;
    if (x == 0)
      print("PROXYCITY");
    else if (x == 1)
      print("P.Y.N.G.");
    else if (x == 2)
      print("DNSUEY!");
    else if (x == 3)
      print("SERVERS");
    else if (x == 4)
      print("HOST!");
    else if (x == 5)
      print("CRIPTONIZE");
    else if (x == 6)
      print("OFFLINE DAY");
    else if (x == 7)
      print("SALT");
    else if (x == 8)
      print("ANSWER!");
    else if (x == 9)
      print("RAR?");
    else if (x == 10) print("WIFI ANTENNAS");
  }
}
