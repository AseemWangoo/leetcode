void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea([0, 1, 0, 3, 12]);
}

void maxArea(List<int> nums) {
  int index = 0;

  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[index] = nums[i];
      index++;
    }
  }

  while (index < nums.length) {
    nums[index] = 0;
    index++;
  }

  print(nums);
}
