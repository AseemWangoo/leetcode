import 'stack.dart';

void main() {
  Map map = {'}': '{', ']': '[', ')': '('};

  String s = '()[]{}';

  print(isValid(s));
}

bool isValid(String s) {
  Stack stack = Stack();
  Map map = {'}': '{', ']': '[', ')': '('};

  for (int i = 0; i < s.length; i++) {
    String cS = s[i];

    if (map.containsKey(cS)) {
      String sTop = stack.pop();
      if (sTop != map[cS]) {
        return false;
      }
    } else {
      stack.push(cS);
    }
  }

  return stack.isEmpty();
}
