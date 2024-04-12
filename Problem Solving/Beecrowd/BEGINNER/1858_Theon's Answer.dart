import 'dart:io';

void main(){
  int n;
  n=int.parse(stdin.readLineSync()!);
  List<String> t;
  t=stdin.readLineSync()!.split(" ");
  int c=int.parse(t[0]);
  int result=1;

  for(int i=0; i<n; i++)
    {
      int T=int.parse(t[i]);
        if(T<c)
        {
            c=T;
            result=i+1;
        }

    }
    print("$result");
}