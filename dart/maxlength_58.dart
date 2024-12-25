import 'dart:math' as Math;

void main() {
  final resp = lengthOfLastWord("   fly me   to   the moon  ");
  print(resp);
}

int lengthOfLastWord(String s) {
  List<String> sArr = s.split("");
  int max = 0;
  int currMax = 0;

  for (int i = 0; i < sArr.length; i++) {
    if (sArr[i] != ' ') {
      max++;
    } else {
      currMax = Math.max(currMax, max);
      max = 0;
    }
  }

  return Math.max(currMax, max);
}
