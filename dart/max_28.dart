void main() {
  final resp = strStr("leetcode", "etco");
  print(resp);
}

int strStr(String haystack, String needle) {
  List<String> hArr = haystack.split("");
  List<String> nArr = needle.split("");

  for (int i = 0; i < hArr.length; i++) {
    if (hArr[i] == nArr[0]) {
      if (compare(haystack, needle, i)) {
        return i;
      }
    }
  }

  return -1;
}

bool compare(String haystack, String needle, int index) {
  List<String> hArr = haystack.split("");
  List<String> nArr = needle.split("");

  for (int i = 0; i < needle.length; i++) {
    if (index >= haystack.length) {
      return false;
    }
    if (nArr[i] != hArr[index]) {
      return false;
    } else {
      index++;
    }
  }
  return true;
}
