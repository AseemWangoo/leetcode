import 'dart:collection';

void main() {
  final resp = maxArea([1, 1, 1, 2, 2, 3], 2);
  print(resp);
}

List<int> maxArea(List<int> nums, int k) {
  Map<int, int> map = Map();

  for (var i = 0; i < nums.length; i++) {
    if (map.containsKey(nums[i])) {
      map[nums[i]] = map[nums[i]]! + 1;
    } else {
      map.putIfAbsent(nums[i], () => 1);
    }
  }

  List<int> list = List<int>.generate(map.length, (index) => -1);
  for (var entry in map.entries) {
    // print(entry);
    list.insert(entry.key, entry.value);
  }

  // print(list);

  List<int> res = [];

  for (int i = list.length - 1; i >= 0; i--) {
    if (list[i] != -1 && res.length < k) {
      res.add(list[i]);
    }
  }

  return res;
}
