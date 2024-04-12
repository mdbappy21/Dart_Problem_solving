import 'dart:io';
import 'dart:math';
void main()
{
    double n, x, y, ans;
    n=double.parse(stdin.readLineSync()!);
    x = (1 + sqrt(5))/2.0;
    y = (1 - sqrt(5))/2.0;
    ans = (pow(x,n) - pow(y,n))/sqrt(5);
    print(ans.toStringAsFixed(1));
}