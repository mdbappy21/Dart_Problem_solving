import 'dart:io';

void main() {
  List<String> funny = stdin.readLineSync()!.split("");
  String odd = "Yes", even = "Yes";
  for (int i = 0; i < funny.length; i += 2) {
    if (RegExp(r'[a-z]').hasMatch(funny[i])) {
      continue;
    } else {
      odd = "NO";
      break;
    }
  }
  for (int i = 1; i < funny.length; i += 2) {
    if (RegExp(r'[A-Z]').hasMatch(funny[i])) {
      continue;
    } else {
      even = "NO";
      break;
    }
  }

  if (odd == "Yes" && even == "Yes") {
    print("Yes");
  } else
    print("No");
}
