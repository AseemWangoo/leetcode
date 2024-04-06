import 'dart:collection';

void main() {
  final resp = maxArea([2, 2, 1, 1, 1, 2, 2]);
  print(resp);
}

int maxArea(List<int> height) {
  if (height.length == 1) {
    return height[0];
  }
  int major = (height.length) ~/ 2;
  Map<int, int> map = HashMap();

  for (var i = 0; i < height.length; i++) {
    if (map.containsKey(height[i])) {
      map[height[i]] = map[height[i]]! + 1;

      if (map[height[i]]! > major) {
        return height[i];
      }
    } else {
      map.putIfAbsent(height[i], () => 1);
    }
  }

  return -1;
}
