class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = [];
    merged.addAll(nums1);
    merged.addAll(nums2);
    merged.sort();
    int n = merged.length;
    if (n % 2 == 1) {
      return merged[n ~/ 2].toDouble();
    } else if (n % 2 == 0) {
      return (merged[(n ~/ 2) - 1] + merged[n ~/ 2]) / 2.0;
    }
    return 0.0;
  }
}
void main() {
  Solution solution = Solution();
  List<int> nums1 = [1, 3];
  List<int> nums2 = [2];
  double result = solution.findMedianSortedArrays(nums1, nums2);
  print("Median: $result");
}