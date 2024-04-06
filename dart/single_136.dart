void main() {
  final resp = maxArea([4, 1, 2, 1, 2]);
  print(resp);
}

int maxArea(List<int> nums) {
  Set<int> numSet = Set();

  for (var i = 0; i < nums.length; i++) {
    if (numSet.contains(nums[i])) {
      numSet.remove(nums[i]);
    } else {
      numSet.add(nums[i]);
    }
  }

  return numSet.first;
}
