bool name(List<String> r, List<String> m) {
  Map<String, int> map = {};

  for (var element in m) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] = map[element]! + 1;
    }
  }

  for (var element in r) {
    if (!map.containsKey(element) || map[element]! <= 0) {
      return false;
    } else {
      map[element] = map[element]! - 1;
    }
  }

  return true;
}

void main() {
  bool result = name(['a', 'b', 'c'], ['a', 'b', 'c', 'a']);
  print("Result: $result"); // Example usage
}
