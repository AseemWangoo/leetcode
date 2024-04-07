void main() {
  // https://youtu.be/99RVfqklbCE
  final resp = maxArea("acb", "ahbgdc");
  print(resp);
}

bool maxArea(String s, String t) {
  if (s.length == 0 && t.length == 0) {
    return true;
  }

  int i = 0, j = 0;

  // i=3, j=6
  while (i < s.length && j < t.length) {
    String cS = s[i];
    String cT = t[j];

    if (cS == cT) {
      i++;
      j++;
    } else {
      j++;
    }
  }

  return i == (s.length);
}
