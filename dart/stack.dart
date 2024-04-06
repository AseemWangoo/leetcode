class Stack<T> {
  List<T> num = [];

  void push(T val) {
    num.add(val);
  }

  T pop() {
    return num.removeLast();
  }

  T peek() {
    return num.last;
  }

  bool isEmpty() {
    return num.isEmpty;
  }

  int length() {
    return num.length;
  }

  @override
  String toString() => num.toString();
}
