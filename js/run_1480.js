var runSum = function (nums) {
  let sum = nums[0];

  for (let i = 1; i < nums.length; i++) {
    nums[i] += nums[i - 1];
  }

  return nums;
};

const resp = runSum([1, 2, 3, 4]);
console.log("resp", resp);
