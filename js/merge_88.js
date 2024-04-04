const merge = (nums1, m, nums2, n) => {
  let k = m + n - 1;

  let iM = m - 1,
    iN = n - 1;

  while (k >= 0) {
    // k=0
    if (iN < 0) {
      nums1[k] = nums1[iM];
      iM--;
    } else if (iM < 0) {
      nums1[k] = nums2[iN];
      iN--;
    } else if (nums1[iM] < nums2[iN]) {
      nums1[k] = nums2[iN]; // 0,2,2,3,5,6
      iN--; // -1
    } else {
      nums1[k] = nums1[iM]; // 1,0,2,3,5,6
      iM--; // 0
    }

    k--;
  }

  return nums1;
};

const resp = merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
console.log("resp", resp);
