class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1 || s.length <= numRows) return s;

    List<List<String>> zigzagList = List.generate(numRows, (_) => []);

    int row = 0;
    bool goingDown = false;

    for (int i = 0; i < s.length; i++) {
      zigzagList[row].add(s[i]);

      if (row == 0 || row == numRows - 1) {
        goingDown = !goingDown;
      }

      row += goingDown ? 1 : -1;
    }

    return zigzagList.map((row) => row.join()).join();
  }
}

void main(){
  Solution solution=Solution();
  String zigzag=solution.convert('PAYPALISHIRING', 3);
  print(zigzag);
}