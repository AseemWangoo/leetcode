const intersection = (nums1, nums2) => {
  if (nums1.length > nums2.length) {
    return intersection(nums2, nums1);
  }

  let map = new Map();

  for (let i = 0; i < nums1.length; i++) {
    if (map.get(nums1[i]) === undefined) {
      map.set(nums1[i], 1);
    } else {
      map.set(nums1[i], map.get(nums1[i]) + 1);
    }
  }

  let list = [];

  for (let i = 0; i < nums2.length; i++) {
    if (map.get(nums2[i]) && map.get(nums2[i]) != 0) {
      map.set(nums2[i], map.get(nums2[i]) - 1);
      list.push(nums2[i]);
    }
  }

  return list;
};

const resp = intersection([4, 9, 5], [9, 4, 9, 8, 4]);
console.log("resp", resp);
