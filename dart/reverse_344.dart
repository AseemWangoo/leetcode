void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea(["h", "e", "l", "l", "o"]);
}

void maxArea(List<String> s) {
  int l = 0, r = s.length - 1;

  while (l < r) {
    String temp = s[l];
    s[l] = s[r];
    s[r] = temp;
    l++;
    r--;
  }

  print(s);
}
