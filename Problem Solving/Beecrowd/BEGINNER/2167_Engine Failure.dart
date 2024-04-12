import 'dart:io';

void main()
{
    int n, tmp = 0, RPM, cnt = 0, ans = 0, cndtn = 1;
    n=int.parse(stdin.readLineSync()!);
    List<String>array=stdin.readLineSync()!.split(" ");
    for(int i=0;i<n;i++)
    {
        RPM=int.parse(array[i]);
        cnt++;
        if(RPM<tmp && cndtn==1)
        {
            ans = cnt;
            cndtn = 0;
        }
        tmp = RPM;
    }
    print(ans);
}