import 'dart:math' as Math;

void main() {
  final resp = maxArea([7, 1, 5, 3, 6, 4]);
  print(resp);
}

int maxArea(List<int> nums) {
  int l = 0, r = 1;
  int maxP = 0;

  while (l < nums.length && r < nums.length) {
    int diff = nums[r] - nums[l];

    if (diff < 0) {
      l++;
      r = l + 1;
    } else {
      maxP = Math.max(maxP, diff);
      r++;
    }
  }

  return maxP;
}
