void main() {
  final resp = maxArea([-1, 0, 3, 5, 9, 12], 5);
  print(resp);
}

int maxArea(List<int> nums, int target) {
  int low = 0, high = nums.length - 1;

  // l=3, h=3, mid = 3
  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}
