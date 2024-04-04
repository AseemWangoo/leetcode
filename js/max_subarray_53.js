const maxSubArray = (nums) => {
  if (nums.length == 1) {
    return nums[0];
  }

  let sum = nums[0],
    maxSum = -9999999;

  for (let i = 0; i < nums.length; i++) {
    if (sum < 0) {
      sum = 0;
    }
    sum += nums[i];

    maxSum = Math.max(sum, maxSum);
  }

  return maxSum;
};

const resp = maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]);
console.log("resp", resp);
