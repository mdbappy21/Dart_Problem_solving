import 'dart:io';
import 'dart:math';

void main() {
  int a,b=0,c=1,d,e,f;
  while (true) {
      List<String> input = stdin.readLineSync()!.split(' ');
      a=int.parse(input[0]);
      if(a==0)break;
      else{
      b = int.parse(input[1]);
      c = int.parse(input[2]);

      d = a * b;
      e = (d * 100) ~/ c;
      f = pow(e,.5).toInt();

      print(f);
    }}
  }

