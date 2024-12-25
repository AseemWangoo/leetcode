void main() {
  final resp = romanToInt("MCMXCIV");
  print(resp);
}

int romanToInt(String s) {
  final map = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  List<String> sArr = s.split("");
  int val = 0;
  int i = 0;

  for (i = 0; i < sArr.length - 1; i++) {
    if (map[sArr[i]]! > map[sArr[i + 1]]!) {
      val += map[sArr[i]]!; //2190
    } else {
      val = val - map[sArr[i]]!; //2189
    }
  }

  return val + map[sArr[i]]!;
}
