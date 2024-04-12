import 'dart:io';

bool sera(String x, String y) {
  return (x == "pedra" && y == "tesoura") ||
      (x == "papel" && y == "pedra") ||
      (x == "tesoura" && y == "papel");
}

void main() {
  while (true) {
    String? inputLine = stdin.readLineSync();
    if (inputLine == null || inputLine == "EOF") break;

    List<String> input = inputLine.split(' ');
    if (input.length < 3) break;

    String s = input[0];
    String s1 = input[1];
    String s2 = input[2];

    if (sera(s, s2) && sera(s, s1))
      print("Os atributos dos monstros vao ser inteligencia, sabedoria...");
    else if (sera(s1, s2) && sera(s1, s))
      print("Iron Maiden's gonna get you, no matter how far!");
    else if (sera(s2, s1) && sera(s2, s))
      print("Urano perdeu algo muito precioso...");
    else
      print("Putz vei, o Leo ta demorando muito pra jogar...");
  }
}
