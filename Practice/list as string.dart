import 'dart:io';

void main() {
  List<String> name = [];
  name.add("Bappy");
  name.add("Akash");
  name.add("Aminul");
  name.add("Auntu");
  name.add("Abdullah");
  name.add("Sabbir");
  name.add("Shuvo");

  print("Printing as List : ");
  for (String i in name) print(i);

  String names = name.join();
  stdout.write("Pringing as String : ");
  print(names);
}
