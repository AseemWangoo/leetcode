void main() {
  final arr = ["aab", "abb", "aabcc", "ab"];

  print(count(arr));
}

List<int> count(List<String> arr) {
  List<int> resp = List.filled(arr.length, -1);

  for (int i = 0; i < arr.length; i++) {
    String word = arr[i];
    int count = 0;

    List<String> char = word.split('');

    for (int j = 0; j < char.length - 1; j++) {
      if (char[j] == char[j + 1]) {
        count = count + 1;
        char[j + 1] = '|';
      }
    }

    resp[i] = count;
  }

  return resp;
}
