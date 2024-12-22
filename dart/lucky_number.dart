void main() {
  final resp = luckyNumber(7);
  print(resp);
}

// https://youtu.be/zikfR0fmx5Q?t=1278
bool luckyNumber(int num) {
  int counter = 2;

  bool helper(int n) {
    if (counter > n) {
      return true;
    }

    if (n % counter == 0) {
      return false;
    }

    n = n - (n ~/ counter);
    counter++;

    return helper(n);
  }

  return helper(num);
}
