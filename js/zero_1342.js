var major = (nums) => {
  let count = 0;

  while (nums != 0) {
    if (nums % 2 == 0) {
      nums = Math.floor(nums / 2);
    } else {
      nums = nums - 1;
    }

    count++;
  }

  return count++;
};

const resp = major(7);
console.log("resp", resp);
