import 'dart:math' as Math;

// https://youtu.be/56TxHMG0qhQ
void main() {
  final resp = findMaxAverage([1, 12, -5, -6, 50, 3], 4);
  print(resp);
}

double findMaxAverage(List<int> nums, int k) {
  int maxSum = 0;
  int sum = 0;

  for (int i = 0; i < k; i++) {
    sum += nums[i];
  }

  maxSum = Math.max(maxSum, sum);

  int l = 0;
  int r = k;

  while (r < nums.length) {
    sum -= nums[l];
    l++;

    sum += nums[r];
    r++;

    maxSum = Math.max(maxSum, sum);
  }

  return maxSum / k;
}
