var major = (nums) => {
  let map = new Map();

  for (let i = 0; i < nums.length; i++) {
    if (map.get(nums[i]) === undefined) {
      map.set(nums[i], 1);
    } else {
      map.set(nums[i], map.get(nums[i]) + 1);
    }
  }
  let count = 0,
    addOdd = false;

  for (let [key, value] of map) {
    if (value % 2 == 0) {
      count += value;
    } else {
      count += value - 1;
      addOdd = true;
    }
  }

  if (addOdd) {
    count++;
  }

  return count;
};

const resp = major("abccccdd");
console.log("resp", resp);
