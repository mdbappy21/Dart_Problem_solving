import 'dart:io';

void main() {
  List<Map<int, String>> fruits = [
    {31231: "Banana"},
    {43861: "Elderberry"},
    {82678: "Honeydew Melon"},
    {23456: "Apple"},
    {78901: "Mango"},
    {98765: "Nectarine"},
    {45678: "Orange"},
    {67890: "Raspberry"},
    {21098: "Tangerine"},
  ];
  int input = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 9; i++) {
    if (fruits[i].containsKey(input)) {
      print(fruits[i][input]);
      break;
    }
  }
}
