import 'dart:math' as Math;

void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea("pwwkew");
  print(resp);
}

int maxArea(String s) {
  Set<String> strSet = Set();
  int max = 0, l = 0, r = 0;

  //l=3 r=6, max=3 , {k,e,w}
  while (r < s.length) {
    String sC = s[r];

    if (strSet.contains(sC)) {
      strSet.remove(s[l]);
      l++;
    } else {
      strSet.add(sC);
      max = Math.max(max, strSet.length);
      r++;
    }
  }

  return max;
}
