import 'stack.dart';

void main() {
  final resp = maxArea("ab##", "c#d#");
  print(resp);
}

bool maxArea(String s, String t) {
  Stack<String> sStack = Stack();
  Stack<String> tStack = Stack();

  for (var i = 0; i < s.length; i++) {
    if (s[i] != "#") {
      sStack.push(s[i]);
    } else {
      if (!sStack.isEmpty()) sStack.pop();
    }
  }

  for (var i = 0; i < t.length; i++) {
    if (t[i] != "#") {
      tStack.push(t[i]);
    } else {
      if (!tStack.isEmpty()) tStack.pop();
    }
  }

  while (!sStack.isEmpty()) {
    String temp = sStack.pop();

    if (tStack.isEmpty() || tStack.pop() != temp) {
      return false;
    }
  }

  return tStack.isEmpty() && sStack.isEmpty();
}
