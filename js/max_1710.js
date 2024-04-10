var major = (nums, truckSize) => {
  nums.sort((a, b) => b[1] - a[1]);

  let max = 0;

  for (let i = 0; i < nums.length; i++) {
    if (nums[i][0] <= truckSize) {
      max += nums[i][0] * nums[i][1];
      truckSize -= nums[i][0];
    } else {
      max += Math.abs(truckSize) * nums[i][1];
      break;
    }
  }

  return max;
};

const resp = major(
  [
    [5, 10],
    [2, 5],
    [4, 7],
    [3, 9],
  ],
  10
);
console.log("resp", resp);
