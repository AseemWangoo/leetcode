void main() {
  final resp = removeDuplicates([1, 1, 1, 2, 2, 3]);
  print(resp);
}

int removeDuplicates(List<int> nums) {
  if (nums.length <= 2) {
    return nums.length;
  }

  int j = 2; //5

  for (int i = 2; i < nums.length; i++) {
    if (nums[i] != nums[j - 2]) {
      nums[j] = nums[i]; //[1,1,2,2,3]
      j++;
    }
  }

  return j;
}
