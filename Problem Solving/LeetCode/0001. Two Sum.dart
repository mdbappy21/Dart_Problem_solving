class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int a=0,b=0;
  for(int i=0;i<nums.length;i++){
    for(int j=i+1;j<nums.length;j++){
      if(nums[i]+nums[j]==target){
        a=i;
        b=j;
        break;
      }
    }
  }
  return [a,b];
  }
}