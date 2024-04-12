import 'dart:io';

void main() {
  String? input;
  while ((input = stdin.readLineSync()) != null) {
    List<int> carry = input!.split(' ').map(int.parse).toList();
    print(carry[0] ^ carry[1]);
  }
}

// #include <stdio.h>
// int main(){
//     unsigned int n, m;
//     while(scanf("%u %u", &n, &m) != EOF){               
//       printf("%u\n", n ^ m);
//     }
//     return 0;
// }