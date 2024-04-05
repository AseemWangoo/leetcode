import 'dart:collection';

void main() {
  final resp = maxArea([4, 9, 5], [9, 4, 9, 8, 4]);
  print(resp);
}

List<int> maxArea(List<int> nums1, List<int> nums2) {
  if (nums1.length > nums2.length) {
    return maxArea(nums2, nums1);
  }

  Map<int, int> map = HashMap();

  for (var i = 0; i < nums1.length; i++) {
    if (map.containsKey(nums1[i])) {
      map[nums1[i]] = map[nums1[i]]! + 1;
    } else {
      map.putIfAbsent(nums1[i], () => 1);
    }
  }

  var list = <int>[];

  for (var i = 0; i < nums2.length; i++) {
    if (map.containsKey(nums2[i]) && map[nums2[i]] != 0) {
      map[nums2[i]] = map[nums2[i]]! - 1;
      list.add(nums2[i]);
    }
  }

  return list;
}
