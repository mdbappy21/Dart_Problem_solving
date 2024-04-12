import 'dart:io';

void main() {
  while (true) {
    String time = stdin.readLineSync()!;
    if (time == "EOF") {
      break;
    } else {
      List<String> subTime = time.split(':');
      int hours = int.tryParse(subTime[0]) ?? 0;
      int minutes = int.tryParse(subTime[1]) ?? 0;

      stdout.write("Atraso maximo: ");

      if (hours < 7 || (hours == 7 && minutes == 0)) {
        print("0");
      } else {
        int maxDelay = ((hours + 1 - 8) * 60 + minutes);
        print("$maxDelay");
      }
    }
  }
}

// import 'dart:io';

// void main() {
//   int hours, minutes, maxDelay = 0;
//   String time;

//   while (true) {
//     time = stdin.readLineSync()!;
//     if (time == "EOF" || time == null)
//       break;
//     else {
//       List<String> subTime = time.split(':');
//       if(subTime.length<2)break;
//       hours = int.tryParse(subTime[0]) ?? 0;
//       minutes = int.tryParse(subTime[1]) ?? 0;
//       if (hours < 8) {
//         if (hours == 7)
//           print("Atraso maximo: $minutes");
//         else
//           print("Atraso maximo: 0");
//       } else {
//         maxDelay = minutes + 60;
//         print("Atraso maximo: $maxDelay");
//       }
//     }
//   }
// }
