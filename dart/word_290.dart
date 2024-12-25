void main() {
  final resp = wordPattern("ab", "dog dog");
  print(resp);
}

bool wordPattern(String pattern, String s) {
  List<String> pArr = pattern.split("");
  List<String> sArr = s.split(" ");

  Map<String, String> map = {};
  Set<String> set = Set();

  for (int i = 0; i < pArr.length; i++) {
    if (map.containsKey(pArr[i])) {
      if (map[pArr[i]] != sArr[i]) {
        return false;
      }
    } else {
      if (set.contains(sArr[i])) {
        return false;
      }

      map[pArr[i]] = sArr[i];
      set.add(sArr[i]);
    }
  }

  return true;
}
