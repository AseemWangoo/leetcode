void main() {
  final resp = maxArea("hello");
  print(resp);
}

String maxArea(String str) {
  if (str.isEmpty) {
    return str;
  }

  if (str.length == 1) {
    return str;
  }

  int s = str.length - 1;
  String res = '';

  while (s >= 0) {
    res += str[s];
    s--;
  }

  return res;
}
