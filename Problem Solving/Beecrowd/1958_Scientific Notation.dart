import 'dart:io';

void main() {
  double X = double.parse(stdin.readLineSync()!);
  String s = X.toStringAsExponential(4).toUpperCase();
  
  List<String> parts = s.split('E');
  String first = parts[0];
  String second = parts[1];
  int len=second.length;
  if(len<3)
  {
    String a=second[0];
    String b=second[1];
    second='E'+a+'0'+b;
  }
  else
  second='E'+second;
  if(first[0]=='-')
  print("$first$second");
  else
  print("+$first$second");
}
