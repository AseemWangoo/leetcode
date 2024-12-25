void main() {
  final resp = removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
  print(resp);
}

int removeDuplicates(List<int> nums) {
  int index = 1;

  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] != nums[i + 1]) {
      nums[index] = nums[i + 1];
      index++; //[0,1,2,3,4]
    }
  }

  return index;
}
