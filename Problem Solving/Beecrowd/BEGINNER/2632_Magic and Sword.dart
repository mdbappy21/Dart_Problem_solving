import 'dart:io';
import 'dart:math';

List<int> spell(String magic, int level) {
  List<int> fire = [200, 20, 30, 50];
  List<int> water = [300, 10, 25, 40];
  List<int> earth = [400, 25, 55, 70];
  List<int> air = [100, 18, 38, 60];

  if (magic == 'fire') {
    return [fire[0], fire[level]];
  } else if (magic == 'water') {
    return [water[0], water[level]];
  } else if (magic == 'earth') {
    return [earth[0], earth[level]];
  } else {
    return [air[0], air[level]];
  }
}

double pointToLineDistance(List<int> P, List<int> L1, List<int> L2) {
  int A = P[0] - L1[0];
  int B = P[1] - L1[1];
  int C = L2[0] - L1[0];
  int D = L2[1] - L1[1];
  int dot = A * C + B * D;
  int squareLength = C * C + D * D;
  double param = -1;

  if (squareLength != 0) {
    param = dot / squareLength;
  }

  List<int> Q;

  if (param < 0) {
    Q = L1;
  } else if (param > 1) {
    Q = L2;
  } else {
    Q = [L1[0] + (param * C).toInt(), L1[1] + (param * D).toInt()];
  }

  int dx = P[0] - Q[0];
  int dy = P[1] - Q[1];
  return sqrt(dx * dx + dy * dy);
}

void main() {
  int N = int.parse(stdin.readLineSync()!);

  for (int _ = 0; _ < N; _++) {
    List<int> dimensions = List<int>.from(stdin.readLineSync()!.split(' ').map((e) => int.parse(e)));
    int w = dimensions[0];
    int h = dimensions[1];
    int x0 = dimensions[2];
    int y0 = dimensions[3];

    List<String> spellInfo = stdin.readLineSync()!.split(' ');
    String magic = spellInfo[0];
    int level = int.parse(spellInfo[1]);
    int cx = int.parse(spellInfo[2]);
    int cy = int.parse(spellInfo[3]);

    List<int> spellResult = spell(magic, level);
    int damage = spellResult[0];
    int radius = spellResult[1];

    List<int> point1 = [x0, y0];
    List<int> point2 = [x0 + w, y0];
    List<int> point3 = [x0, y0 + h];
    List<int> point4 = [x0 + w, y0 + h];

    if (x0 < cx && cx < point2[0] && y0 < cy && cy < point3[1]) {
      print(damage);
    } else {
      double distance1 = pointToLineDistance([cx, cy], point1, point2);
      double distance2 = pointToLineDistance([cx, cy], point1, point3);
      double distance3 = pointToLineDistance([cx, cy], point4, point2);
      double distance4 = pointToLineDistance([cx, cy], point4, point3);

      if (radius >= distance1 || radius >= distance2 || radius >= distance3 || radius >= distance4) {
        print(damage);
      } else {
        print(0);
      }
    }
  }
}
