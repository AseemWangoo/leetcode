var binSearch = (nums, target) => {
  let low = 0,
    high = nums.length - 1,
    mid = Math.floor((low + high) / 2);

  // l=6, m=6, h=7
  for (let i = 0; i < nums.length; i++) {
    if (nums[mid] == target) {
      return target;
    } else if (nums[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }

    mid = Math.floor((low + high) / 2);
  }

  return -1;
};

const resp = binSearch([-2, 3, 4, 7, 8, 9, 11, 13], 3);
console.log("resp", resp);
