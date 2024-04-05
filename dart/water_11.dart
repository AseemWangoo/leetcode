import 'dart:math' as Math;

void main() {
  final resp = maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
  print(resp);
}

int maxArea(List<int> height) {
  int low = 0, high = height.length - 1, maxArea = 0;

  for (var i = 0; i < height.length; i++) {
    if (height[low] < height[high]) {
      maxArea = Math.max(maxArea, height[low] * (high - low));
      low++;
    } else {
      maxArea = Math.max(maxArea, height[high] * (high - low));
      high--;
    }
  }

  return maxArea;
}
