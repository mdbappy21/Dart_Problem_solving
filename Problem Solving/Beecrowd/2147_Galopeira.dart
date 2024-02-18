import 'dart:io';

void main()
{
    int lnth;
    String name;
    int t=int.parse(stdin.readLineSync()!);
    for(int i=0;i<t;i++){
        name=stdin.readLineSync()!;
        lnth = name.length;
        String result =(lnth*.01).toStringAsFixed(2);
        print(result);
    }
}