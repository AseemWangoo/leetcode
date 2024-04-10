import 'dart:math';

void main() {
  final resp = maxArea(["5", "2", "C", "D", "+"]);
  print(resp);
}

int maxArea(List<String> ops) {
  List<int> res = [];

  for (var i = 0; i < ops.length; i++) {
    if (ops[i] == 'C') {
      res.removeLast();
    } else if (ops[i] == 'D') {
      res.add(res.last * 2);
    } else if (ops[i] == '+') {
      res.add(res.last + res.elementAt(res.length - 2));
    } else {
      res.add(int.parse(ops[i]));
    }
  }

  // print(res.reduce((value, element) => value + element));
  int sum = 0;
  for (int number in res) {
    sum += number;
  }

  return sum;
}
