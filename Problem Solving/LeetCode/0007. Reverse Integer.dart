import 'dart:math';

class Solution {
  int reverse(int x) {
    int result = x;
    List<String> rev= result.toString().split('');
    rev = rev.reversed.toList();
    if (x < 0) {
      rev.remove('-');
      result = int.parse(rev.join());
      result *= -1;
    } else {
      result = int.parse(rev.join());
    }
    print(pow(2, -31));

    if(result> pow(2, 31) || result <pow(2, 31)*(-1)){
      result=0;
    }
    return result;
  }
}

void main() {
  Solution solution = Solution();
  int result=solution.reverse(-1);
  print(result);
}
