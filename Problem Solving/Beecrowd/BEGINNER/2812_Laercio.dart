import 'dart:io';

int compara(int a, int b) {
  return a - b;
}

int compara2(int a, int b) {
  return b - a;
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int x = 0; x < t; x++) {
    int n = int.parse(stdin.readLineSync()!);
    List<int> vet1 = [];
    List<int> vet2 = [];
    List<int>m=stdin.readLineSync()!.split(" ").map(int.parse).toList();
    for (int i = 0; i < n; i++) {
      int tmp = m[i];
      if (tmp % 2 != 0) {
        vet1.add(tmp);
        vet2.add(tmp);
      }
    }

    vet1.sort((a, b) => compara(a, b));
    vet2.sort((a, b) => compara2(a, b));

    int k = 0;
    int z = 0;
    bool flag = false;
    for (int i = 0; i < vet1.length; i++) {
      if (i.isEven) {
        if (flag) {
          stdout.write(' ${vet2[k++]}');
        } else {
          stdout.write('${vet2[k++]}');
          flag = true;
        }
      } else {
        if (flag) {
          stdout.write(' ${vet1[z++]}');
        } else {
          stdout.write('${vet1[z++]}');
          flag = true;
        }
      }
    }

    print('');
  }
}
