var name = (s, t) => {
  if (t.length < s.length) {
    return false;
  }

  let map = new Map();

  for (let i = 0; i < s.length; i++) {
    if (map.get(s[i]) === undefined) {
      map.set(s[i], 1);
    } else {
      map.set(s[i], map.get(s[i]) + 1);
    }
  }

  for (let i = 0; i < t.length; i++) {
    if (map.get(t[i]) === undefined || map.get(t[i]) <= 0) {
      return false;
    }

    map.set(t[i], map.get(t[i]) - 1);
  }

  return true;
};

const resp = name("anagram", "nagaram");
console.log("resp", resp);
