void main() {
  final resp = twoSum([3, 2, 4], 6);
  print(resp);
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    int diff = target - nums[i];

    if (map.containsKey(diff)) {
      return [map[diff]!, i];
    } else {
      map[nums[i]] = i;
    }
  }

  return [-1];
}
