import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<int> pts = [0, 0];
    List<int> distance = [0, 0];

    for (int j = 0; j < 3; ++j) {
      List<int> inputs =stdin.readLineSync()!.split(' ').map(int.parse).toList();
      pts[0] += inputs[0] * inputs[1];
      distance[0] += inputs[1];
    }

    for (int k = 0; k < 3; ++k) {
      List<int> inputs =stdin.readLineSync()!.split(' ').map(int.parse).toList();
      pts[1] += inputs[0] * inputs[1];
      distance[1] += inputs[1];
    }

    if (pts[0] > pts[1]) {
      print('JOAO');
    } else if (pts[0] < pts[1]) {
      print('MARIA');
    } else {
      if (distance[0] > distance[1])
        print("JOAO");
      else
        print("MARIA");
    }
  }
}
