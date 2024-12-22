void main() {
  final arr = [1, 1, 0, 0, 1, 1];

  print(count(arr));
}

int count(List<int> arr) {
  int count = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      count++;

      for (int j = i; j < arr.length; j++) {
        arr[j] = arr[j] == 1 ? 0 : 1;
      }
    }
  }

  return count;
}
