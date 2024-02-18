import 'dart:io';
void main()
{
    int number,a, cnt2=0, cnt3=0, cnt4=0, cnt5=0;
    number=int.parse(stdin.readLineSync()!);
    List<String>BinoList=stdin.readLineSync()!.split(" ");
    for(int i=0; i<number; i++)
    {
      a=int.parse(BinoList[i]);
        if(a % 2 == 0) cnt2++;
        if(a % 3 == 0) cnt3++;
        if(a % 4 == 0) cnt4++;
        if(a % 5 == 0) cnt5++;
    }
    print("$cnt2 Multiplo(s) de 2");
    print("$cnt3 Multiplo(s) de 3");
    print("$cnt4 Multiplo(s) de 4");
    print("$cnt5 Multiplo(s) de 5");
}