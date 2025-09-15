class Solution {
  int lengthOfLongestSubstring(String s) {
    List chars=[];
    int length=0;
    int max=0;

    for(int i=0;i<s.length;i++){
      if(chars.contains(s[i])){
        length=chars.indexOf(s[i]) + 1;
        chars=chars.sublist(length);
      }
      chars.add(s[i]);
      max = chars.length > max ? chars.length : max;
    }
    return max;
  }
}

void main() {
  Solution solution = Solution();
  String s = "dvddfgf";
  int result = solution.lengthOfLongestSubstring(s);
  print("Length: $result");
}