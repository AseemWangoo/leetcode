var major = (s, t) => {
  let mapST = new Map(),
    mapTS = new Map();

  for (let i = 0; i < s.length; i++) {
    if (mapST[s[i]] && mapST[s[i]] != t[i]) {
      return false;
    }
    if (mapTS[t[i]] && mapTS[t[i]] != s[i]) {
      return false;
    }
    mapST[s[i]] = t[i];
    mapTS[t[i]] = s[i];
  }

  return true;
};

const resp = major("badc", "baba");
console.log("resp", resp);
