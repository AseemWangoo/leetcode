import 'dart:math' as Math;

void main() {
  // [5,1,1,1] 0

  final resp = maxArea([5, 1, 1, 1], 2);
  print(resp);
}

int maxArea(List<int> nums, int k) {
  int count = 0;

  for (var i = 0; i < nums.length; i++) {
    if (i <= k) {
      count += Math.min(nums[k], nums[i]);
    } else {
      count += Math.min(nums[k] - 1, nums[i]);
    }
  }

  return count;
}
