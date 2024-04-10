var major = (nums) => {
  if (nums.length == 1) {
    return nums;
  }

  let i = 0,
    index = 0;

  while (i < nums.length) {
    if (nums[i] % 2 == 0) {
      let temp = nums[i];
      nums[i] = nums[index];
      nums[index] = temp;
      index++;
    }

    i++;
  }

  // [0,2,1] i=2,index=2
  return nums;
};

const resp = major([3, 1, 2]);
console.log("resp", resp);
