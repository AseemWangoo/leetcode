void main() {
  final resp = maxArea([0, 1, 2, 2, 3, 0, 4, 2], 2);
  print(resp);
}

int maxArea(List<int> nums, int val) {
  if (nums.length == 0) {
    return 0;
  }

  int index = 0;

  // [0,1,3,0,4]
  // i=7, index=5
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[index] = nums[i];
      index++;
    }
  }

  return index;
}
