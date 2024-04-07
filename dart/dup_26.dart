void main() {
  final resp = maxArea([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
  print(resp);
}

int maxArea(List<int> nums) {
  if (nums.length == 1) {
    return 1;
  }

  int index = 1;

  for (var i = 0; i < nums.length - 1; i++) {
    if (nums[i] != nums[i + 1]) {
      nums[index] = nums[i + 1];
      index++;
    }
  }

  return index;
}
