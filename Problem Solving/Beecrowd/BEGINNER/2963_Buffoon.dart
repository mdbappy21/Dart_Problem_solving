import 'dart:io';

class Placar {
  int x;
  int pos;

  Placar(this.x, this.pos);
}

int compare(Placar a, Placar b) {
  if (a.x == b.x) {
    return a.pos - b.pos;
  } else {
    return b.x - a.x;
  }
}

void main() {
  List<Placar> v = [];
  
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    int score=int.parse(stdin.readLineSync()!);
    v.add(Placar(score, i));
  }

  int x = v[0].x;

  v.sort(compare);

  if (v[0].pos == 0 && x == v[0].x) {
    print('S');
  } else {
    print('N');
  }
}
