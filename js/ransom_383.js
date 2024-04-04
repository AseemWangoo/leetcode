var name = (r, m) => {
  let map = new Map();

  for (let i = 0; i < m.length; i++) {
    if (map.get(m[i]) === undefined) {
      map.set(m[i], 1);
    } else {
      map.set(m[i], map.get(m[i]) + 1);
    }
  }

  for (let i = 0; i < r.length; i++) {
    if (map.get(r[i]) === undefined || map.get(r[i]) <= 0) {
      return false;
    } else {
      map.set(r[i], map.get(r[i]) - 1);
    }
  }

  return true;
};

const resp = name("aa", "aab");
console.log("resp", resp);
