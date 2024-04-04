var major = (nums) => {
  if (nums.length == 1) {
    return nums[0];
  }

  let set = new Set();

  for (let i = 0; i < nums.length; i++) {
    if (!set.has(nums[i])) {
      set.add(nums[i]);
    } else {
      set.delete(nums[i]);
    }
  }

  let item;
  set.forEach((element) => {
    item = element;
  });

  return item;
};

const resp = major([4, 1, 2, 1, 2]);
console.log("resp", resp);
