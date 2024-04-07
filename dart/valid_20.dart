import 'stack.dart';

void main() {
  final resp = maxArea("()}");
  print(resp);
}

bool maxArea(String s) {
  if (s.length == 1) {
    return false;
  }

  Stack<String> stack = Stack();

  for (var i = 0; i < s.length; i++) {
    if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
      stack.push(s[i]);
    } else if (s[i] == ')' && !stack.isEmpty() && stack.peek() == '(') {
      stack.pop();
    } else if (s[i] == ']' && !stack.isEmpty() && stack.peek() == '[') {
      stack.pop();
    } else if (s[i] == '}' && !stack.isEmpty() && stack.peek() == '{') {
      stack.pop();
    } else {
      return false;
    }
  }

  return stack.isEmpty();
}
