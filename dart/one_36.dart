void main() {
  final resp = maxArea([1, 9]);
  print(resp);
}

List<int> maxArea(List<int> digits) {
  List<int> newDigit = digits;

  for (var i = newDigit.length - 1; i >= 0; i--) {
    if (newDigit[i] < 9) {
      newDigit[i] = newDigit[i] + 1;
      return newDigit;
    }

    newDigit[i] = 0;
  }

  newDigit.insert(0, 1);
  return newDigit;
}
