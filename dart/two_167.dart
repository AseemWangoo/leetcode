void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea([2, 7, 11, 15], 9);
  print(resp);
}

List<int> maxArea(List<int> nums, int target) {
  int left = 0, right = nums.length - 1;

  while (left <= right) {
    int sum = nums[left] + nums[right];

    if (sum < target) {
      left++;
    } else if (sum > target) {
      right--;
    } else {
      return [++left, ++right];
    }
  }

  return [];
}
