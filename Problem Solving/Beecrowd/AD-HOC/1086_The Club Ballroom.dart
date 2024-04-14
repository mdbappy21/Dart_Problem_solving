//runtime error
// import 'dart:io';
// import 'dart:math';

// int answer(int height, int planks_to_complete, List<int> planks) {
//   int begin = 0;
//   int end = planks.length - 1;
//   int vertical_planks = 0;
//   int planks_used = 0;

//   while (true) {
//     if (vertical_planks == planks_to_complete) break;
//     if (begin >= end) return 0;

//     if (planks[end] > height)
//       end--;
//     else if (planks[end] == height) {
//       end--;
//       vertical_planks++;
//       planks_used++;
//     } else {
//       if (begin != end) {
//         while (true) {
//           if (planks[begin] + planks[end] == height) {
//             begin++;
//             vertical_planks++;
//             planks_used += 2;
//             break;
//           }
//           if (planks[begin] + planks[end] > height) break;

//           begin++;
//         }
//         end--;
//       }
//     }
//   }

//   return planks_used;
// }

// void main() {
//   while (true) {
//     String? input = stdin.readLineSync();
//     if (input == null) break;
//     List<int> tokens = input.split(' ').map(int.parse).toList();
//     int l1 = tokens[0];
//     int l2 = tokens[1];

//     if (l1 == 0 && l2 == 0) break;

//     int l = int.parse(stdin.readLineSync()!);
//     stdin.readLineSync();

//     List<int> planks = stdin.readLineSync()!.split(" ").map(int.parse).toList();

//     planks.sort();

//     int aws1 = 0;
//     int aws2 = 0;
//     if ((l2 * 100) % l == 0) aws1 = answer(l1, l2 * 100 ~/ l, planks);
//     if ((l1 * 100) % l == 0) aws2 = answer(l2, l1 * 100 ~/ l, planks);

//     if (aws1 == 0 && aws2 == 0) {
//       print("impossivel");
//     } else {
//       if (aws1 != 0 && aws2 != 0)
//         print(min(aws1, aws2));
//       else
//         print(max(aws1, aws2));
//     }
//   }
// }
