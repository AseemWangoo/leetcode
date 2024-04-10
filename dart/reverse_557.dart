void main() {
  //https://youtu.be/PN68qx-Qkdw
  final resp = maxArea("Let's take LeetCode contest");
}

String maxArea(String s) {
  List<String> list = s.split(" ");

  int l = 0, r = 0;

  for (var i = 0; i < list.length; i++) {
    String word = list[i];
    word = word.split("").reversed.join("");
    list[i] = word;
  }

  return list.join(" ").toString();
}
