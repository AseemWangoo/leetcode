import 'dart:math' as Math;

void main() {
  final resp = isHappy(61);
  print(resp);
}

bool isHappy(int n) {
  int sum = 0;
  Set<int> set = Set();

  while (true) {
    while (n != 0) {
      sum = sum + Math.pow(n % 10, 2) as int;
      n = n ~/ 10;
    }

    if (sum == 1) {
      return true;
    }

    n = sum;
    if (set.contains(n)) {
      return false;
    } else {
      set.add(sum);
      sum = 0;
    }
  }
}
