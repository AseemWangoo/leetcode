var missingNum = function (nums) {
  var len = nums.length;
  var set = new Set();

  for (let i = 0; i < len; i++) {
    set.add(nums[i]);
  }

  for (let i = 0; i <= len; i++) {
    if (!set.has(i)) {
      return i;
    }
  }

  return -1;
};

const resp = missingNum([0, 1]);
console.log("resp", resp);
