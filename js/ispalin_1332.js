var major = (s) => {
  if (s.length == 0) {
    return 0;
  } else if (isPalin(s)) {
    return 1;
  }

  return 2;
};

var isPalin = function (s) {
  let k = 0,
    j = s.length - 1;

  while (k < s.length) {
    if (s[k] != s[j]) {
      return false;
    }

    k++;
    j--;
  }

  return true;
};

const resp = major("ababa");
console.log("resp", resp);
