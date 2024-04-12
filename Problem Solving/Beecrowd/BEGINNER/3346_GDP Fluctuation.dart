import 'dart:io';

void main() {
    double a,b;
    List<double>input=stdin.readLineSync()!.split(" ").map(double.parse).toList();
    a=input[0];
    b=input[1];
    double result=((((1.0 + a/100.00) * (1.0 + b/100.00)) - 1.0) * 100.0);

    print(result.toStringAsFixed(6));
}

