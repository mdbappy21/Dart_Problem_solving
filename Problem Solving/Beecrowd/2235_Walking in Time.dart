import 'dart:io';

void main()
{
    int a, b, c;
    List<int>Walking=stdin.readLineSync()!.split(" ").map(int.parse).toList();
    a=Walking[0];
    b=Walking[1];
    c=Walking[2];
    if(a-b == 0) print("S");
    else if(a-c == 0) print("S");
    else if(b-c == 0) print("S");
    else if((a+b)-c == 0) print("S");
    else if((b+c)-a == 0) print("S");
    else if((a+c)-b == 0) print("S");
    else print("N");
}