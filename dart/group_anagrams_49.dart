// https://youtu.be/C9V66KyZCP8
void main() {
  final resp = anagrams(['aab', 'bba', 'baa', 'abbccc']);
  print(resp);
}

List<List<String>> anagrams(List<String> str) {
  // Get the frequency of the word
  // Check the frequency string and the actual string

  Map<String, List<String>> map = {};
  List<List<String>> finalList = [];

  for (int i = 0; i < str.length; i++) {
    final freqKey = genFrequencyKey(str[i]);

    if (map.containsKey(freqKey)) {
      map[freqKey]!.add(str[i]);
    } else {
      map[freqKey] = [str[i]];
    }
  }

  for (var list in map.entries) {
    finalList.add(list.value);
  }

  // Sort list
  finalList.sort((a, b) => b.length.compareTo(a.length));

  return finalList.reversed.toList();
}

String genFrequencyKey(String key) {
  final list = List.filled(26, 0);

  for (int i = 0; i < key.length; i++) {
    final char = key[i];

    int index = char.codeUnitAt(0) - 'a'.codeUnitAt(0);
    /**
     * freq must be a list of size 26, where each index corresponds to a letter:

      freq[0] → frequency of 'a'
      freq[1] → frequency of 'b'
     */
    list[index]++;
  }

  String s = '';

  for (int i = 0; i < 26; i++) {
    if (list[i] > 0) {
      s += '${String.fromCharCode(i + 'a'.codeUnitAt(0))}${list[i]}';
    }
  }

  return s;
}
