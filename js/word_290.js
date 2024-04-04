var major = (pattern, s) => {
  let sArr = s.split(" ");

  if (sArr.length != pattern.length) {
    return false;
  }

  let map = new Map();
  let set = new Set();

  for (let i = 0; i < pattern.length; i++) {
    if (map.get(pattern[i]) === undefined) {
      if (set.has(sArr[i])) {
        return false;
      }

      map.set(pattern[i], sArr[i]);
      set.add(sArr[i]);
    } else {
      if (map.get(pattern[i]) !== sArr[i]) {
        return false;
      }
    }
  }

  return true;
};

const resp = major("ab", "dog dog");
console.log("resp", resp);
