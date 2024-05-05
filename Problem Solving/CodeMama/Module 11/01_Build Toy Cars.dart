import 'dart:io';

int calculateNumberOfCars(int wheels, int bodies, int figures) {
  int maxCars = 0;

  int carsByWheels = wheels ~/ 4;
  int carsByBodies = bodies;
  int carsByFigures = figures ~/ 2;

  maxCars = carsByWheels;
  if (carsByBodies < maxCars) maxCars = carsByBodies;
  if (carsByFigures < maxCars) maxCars = carsByFigures;

  return maxCars;
}

void main() {
  List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int wheels = input[0];
  int bodies = input[1];
  int figures = input[2];

  int numberOfCars = calculateNumberOfCars(wheels, bodies, figures);

  print(numberOfCars);
}
