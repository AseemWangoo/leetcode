void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea([-4, -1, 0, 3, 10]);
  print(resp);
}

List<int> maxArea(List<int> nums) {
  int left = 0, right = nums.length - 1;
  List<int> list = [];

  // 9,16,100
  //l=1, r=3
  while (left <= right) {
    int numLeft = nums[left] * nums[left];
    int numRight = nums[right] * nums[right];

    if (numLeft < numRight) {
      list.add(numRight);
      right--;
    } else {
      list.add(numLeft);
      left++;
    }
  }

  return list.reversed.toList();
}
