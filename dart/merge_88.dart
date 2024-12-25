void main() {
  List<int> resp = merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
  print(resp);
}

List<int> merge(List<int> nums1, int m, List<int> nums2, int n) {
  int k = m + n - 1;

  int iM = m - 1;
  int iN = n - 1;

  while (k >= 0) {
    if (iN < 0) {
      nums1[k] = nums1[iM];
      iM--;
    } else if (iM < 0) {
      nums1[k] = nums2[iN];
      iN--;
    } else if (nums1[iM] < nums2[iN]) {
      nums1[k] = nums2[iN];
      iN--;
    } else {
      nums1[k] = nums1[iM];
      iM--;
    }

    k--;
  }

  return nums1;
}
