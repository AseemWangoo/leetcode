var best = (nums) => {
  let i = 0,
    j = 1,
    maxP = 0;

  while (i < nums.length && j < nums.length) {
    let diff = nums[j] - nums[i];

    if (diff < 0) {
      i++;
      j = i + 1;
    } else {
      maxP = Math.max(maxP, diff);
      j++;
    }
  }

  return maxP;
};

const resp = best([7, 1, 5, 3, 6, 4]);
console.log("resp", resp);
