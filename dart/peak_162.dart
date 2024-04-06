void main() {
  final resp = maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
  print(resp);
}

int maxArea(List<int> nums) {
  int left = 0, right = nums.length - 1;

  while (left < right) {
    int mid = (left + right) ~/ 2;

    if (nums[mid] < nums[mid + 1]) {
      left = mid + 1;
    } else {
      right = mid;
    }
  }

  return left;
}
