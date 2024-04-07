void main() {
  // https://youtu.be/gmu0RA5_zxs
  final resp = rotate([1, 2, 3, 4, 5, 6, 7], 3);
}

void rotate(List<int> nums, int k) {
  k = k % nums.length;

  reverse(nums, 0, nums.length - 1); // 7,6,5,4,3,2,1
  reverse(nums, 0, k - 1); // 5,6,7,4,3,2,1
  reverse(nums, k, nums.length - 1); //// 5,6,7,1,2,3,4

  print(nums);
}

void reverse(List<int> nums, int start, int end) {
  //s=2, e=4
  while (start <= end) {
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;

    start++;
    end--;
  }
}
