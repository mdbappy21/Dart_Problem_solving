import 'dart:io';

void main()
{
    String twt;
    twt=stdin.readLineSync()!;
    if(twt.length>140)
    print("MUTE");
    else
    print("TWEET");
}