import 'dart:collection';

void main() {
  final resp = maxArea("abccccdd");
  print(resp);
}

int maxArea(String str) {
  int pal = 0;
  bool addOdd = false;

  Map<String, int> map = HashMap();

  for (var i = 0; i < str.length; i++) {
    if (map.containsKey(str[i])) {
      map[str[i]] = map[str[i]]! + 1;
    } else {
      map.putIfAbsent(str[i], () => 1);
    }
  }

  for (var entry in map.entries) {
    if (entry.value % 2 == 0) {
      pal += entry.value;
    } else {
      pal += (entry.value) - 1;
      addOdd = true;
    }
  }

  if (addOdd) {
    pal++;
  }

  return pal;
}
