void main() {
  final resp = maxArea(100);
  print(resp);
}

int maxArea(int num) {
  int sum = 0;

  while (num > 0) {
    sum = sum + num % 10;
    num = num ~/ 10;
  }

  return sum;
}
