import'dart:io';
void main()
{
    String temp;
    List<int>action=stdin.readLineSync()!.split(" ").map(int.parse).toList();
    int count = action[0];
    while(action[1]--!=0)
    {
        temp=stdin.readLineSync()!;
        if(temp[0] == 'f') count++;
        else count--;
    }
    print(count);
}
