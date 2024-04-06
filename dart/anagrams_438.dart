import 'dart:collection';

void anagram() {
  final resp = maxArea("cbaebabacd", "abc");
  print(resp);
}

List<int> maxArea(String s, String p) {
  var sMap = HashMap();
  var pMap = HashMap();
  var listNum = <int>[];

  for (var i = 0; i < p.length; i++) {
    if (pMap.containsKey(p[i])) {
      pMap[p[i]] = pMap[p[i]]++;
      sMap[s[i]] = sMap[s[i]]++;
    } else {
      pMap.putIfAbsent(p[i], () => 1);
      sMap.putIfAbsent(s[i], () => 1);
    }
  }

  if (mapEquals(sMap, pMap)) {
    listNum.add(0);
  }

  int left = 0, right = p.length;

  while (right < s.length) {
    String cS = s[right];
    String cL = s[left];

    sMap[cS] = (sMap[cS] ?? 0) + 1;
    sMap[cL] = (sMap[cL] ?? 0) - 1;

    if (sMap[cL] == 0) {
      sMap.remove(cL);
    }

    left++;
    if (mapEquals(sMap, pMap)) {
      listNum.add(left);
    }

    right++;
  }

  return listNum;
}

bool mapEquals(HashMap a, HashMap b) {
  if (a.length != b.length) return false;
  for (var key in a.keys) {
    if (a[key] != b[key]) return false;
  }
  return true;
}
