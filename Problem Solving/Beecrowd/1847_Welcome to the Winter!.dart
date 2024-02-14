import 'dart:io';

void main() {
  int First, Second, Third, fc, st;
  List<String> inputs = stdin.readLineSync()!.split(' ');
  First = int.parse(inputs[0]);
  Second = int.parse(inputs[1]);
  Third = int.parse(inputs[2]);

  if (First > Second) {
    if (Second <= Third)
      print(":)");
    else {
      fc = First - Second;
      st = Second - Third;
      if (fc > st)
        print(":)");
      else
        print(":(");
    }
  }

  else if (First < Second) {
    fc = Second-First;
    st = Third-Second;
    if (Second < Third) {
      if (fc <= st)
        print(":)");
      else
        print(":(");
    } else
      print(":(");
  }

  else{
    if(Second>=Third)
      print(":(");
    else
      print(":)");
  }
}
