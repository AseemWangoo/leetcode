var name = (s) => {
  let index = 1000000,
    map = new Map();

  for (let i = 0; i < s.length; i++) {
    if (map.get(s[i]) === undefined) {
      map.set(s[i], i);
    } else {
      map.set(s[i], -1);
    }
  }

  for (const [key, val] of map) {
    let val = map.get(key);
    if (val != -1) {
      index = Math.min(index, val);
    }
  }

  if (index === 1000000) {
    return -1;
  }

  return index;
};

const resp = name("leetcode");
console.log("resp", resp);
