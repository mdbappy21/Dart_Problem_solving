import 'dart:io';

void main() {
  int product = int.parse(stdin.readLineSync()!);
  double amount = 0;
  for (int i = 0; i < product; i++) {
    List<String> productList = stdin.readLineSync()!.split(" ");
    if (int.parse(productList[0]) == 1001)
      amount += int.parse(productList[1]) * 1.50;
    else if (int.parse(productList[0]) == 1002)
      amount += int.parse(productList[1]) * 2.50;
    else if (int.parse(productList[0]) == 1003)
      amount += int.parse(productList[1]) * 3.50;
    else if (int.parse(productList[0]) == 1004)
      amount += int.parse(productList[1]) * 4.50;
    else if (int.parse(productList[0]) == 1005)
      amount += int.parse(productList[1]) * 5.50;
  }
  print(amount.toStringAsFixed(2));
}
