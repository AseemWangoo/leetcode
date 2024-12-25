void main() {
  final resp = longestCommonPrefix(["flower", "flow", "flight"]);
  print(resp);
}

String longestCommonPrefix(List<String> strs) {
  strs.sort((a, b) => a.length.compareTo(b.length));
  // print(strs);

  String first = strs.first;
  String last = strs.last;

  List<String> strArr = first.split("");
  List<String> strLastArr = last.split("");

  String resp = "";

  for (int i = 0; i < strArr.length; i++) {
    if (strArr[i] != strLastArr[i]) {
      break;
    } else {
      resp += strArr[i];
    }
  }

  return resp;
}
