import 'dart:io';

void main() {
  List<double> numbers =stdin.readLineSync()!.split(" ").map(double.parse).toList();
  double sum = numbers[0] + numbers[1] + numbers[2];
  double avg = sum / 3;
  print("Average: ${avg.toStringAsFixed(2)}");
}
