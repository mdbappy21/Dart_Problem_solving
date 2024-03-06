import 'dart:io';

void main() {
  int n=int.parse(stdin.readLineSync()!);//size of the list that initially create.
  List<String> generate = List.generate(n, (_) => 'NULL');
  List<int> generate1 = List.generate(n, (_) => 0);

  generate[0]="Bappy";
  generate1[0]=21;
  print(generate);
  print(generate1);
}
