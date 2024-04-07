import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);

  int bonecosHour = 0;
  int arquitetosHour = 0;
  int musicosHour = 0;
  int desenhistasHour = 0;

  for (int i = 0; i < N; i++) {
    List<String> input = stdin.readLineSync()!.split(" ");
    String group = input[1];
    int hour = int.parse(input[2]);

    if (group == 'bonecos') {
      bonecosHour += hour;
    } else if (group == 'arquitetos') {
      arquitetosHour += hour;
    } else if (group == 'musicos') {
      musicosHour += hour;
    } else {
      desenhistasHour += hour;
    }
  }

  int total = (bonecosHour ~/ 8) +
      (arquitetosHour ~/ 4) +
      (musicosHour ~/ 6) +
      (desenhistasHour ~/ 12);

  print(total);
}
