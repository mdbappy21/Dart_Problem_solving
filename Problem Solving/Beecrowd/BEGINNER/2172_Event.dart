import 'dart:io';

void main()
{
    int x, m;
    while(true)
    {
      List<int>input=stdin.readLineSync()!.split(" ").map(int.parse).toList();
      x=input[0];
      m=input[1];
        if(x==0 && m==0) break;
        print(x*m);
    }
}