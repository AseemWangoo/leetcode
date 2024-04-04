const twoSum = (nums, target) => {
  let map = new Map();

  for (let i = 0; i < nums.length; i++) {
    var diff = target - nums[i];

    if (map.has(diff)) {
      return [map.get(diff), i];
    }

    map.set(nums[i], i);
  }

  return map;
};

const resp = twoSum([2, 7, 11, 15], 9);
console.log("resp", resp);
