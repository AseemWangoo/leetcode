void main() {
  final resp = maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
  print(resp);
}

int maxArea(List<int> num) {
  int max = -1, secondMax = -1;

  for (var i = 0; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
    }
  }

  for (var i = 0; i < num.length; i++) {
    if (num[i] != max && num[i] > secondMax) {
      secondMax = num[i];
    }
  }

  return secondMax;
}
