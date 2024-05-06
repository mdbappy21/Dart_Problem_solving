import 'dart:io';

void main() {
  List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int originalPrice =input[0];
  int discountPercentage = input[1];

  double discountAmount = originalPrice * (discountPercentage / 100);

  double finalPrice = originalPrice - discountAmount;

  print("Price: ${finalPrice.toStringAsFixed(2)}");
}
