var binSearch = (nums, target) => {
  if (nums.length == 0) {
    return [-1, -1];
  }

  let low = 0,
    rIndex = -1,
    lIndex = -1,
    high = nums.length - 1,
    mid = Math.floor((low + high) / 2);

  // l=6, m=5, h=5, rIndex=5
  for (let i = 0; i < nums.length; i++) {
    if (nums[mid] == target) {
      low = mid + 1;
      rIndex = mid;
    } else if (nums[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }

    mid = Math.floor((low + high) / 2);
  }

  low = 0;
  lIndex = -1;
  high = nums.length - 1;
  mid = Math.floor((low + high) / 2);

  // l=3, m=3, h=2, lIndex=3
  for (let i = 0; i < nums.length; i++) {
    if (nums[mid] == target) {
      high = mid - 1;
      lIndex = mid;
    } else if (nums[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }

    mid = Math.floor((low + high) / 2);
  }

  return [lIndex, rIndex];
};

const resp = binSearch([5, 7, 7, 8, 8, 11], 8);
console.log("resp", resp);
