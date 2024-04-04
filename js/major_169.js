var major = (nums) => {
  if (nums.length == 1) {
    return nums[0];
  }

  let map = new Map();

  let max = nums.length / 2;

  for (let i = 0; i < nums.length; i++) {
    if (map.get(nums[i]) === undefined) {
      map.set(nums[i], 1);
    } else {
      map.set(nums[i], map.get(nums[i]) + 1);

      if (map.get(nums[i]) > max) {
        return nums[i];
      }
    }
  }

  return -1;
};

const resp = major([2, 2, 1, 1, 1, 2, 2]);
console.log("resp", resp);
