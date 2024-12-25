void main() {
  final resp = intToRoman(2837);
  print(resp);
}

String intToRoman(int num) {
  final list = [
    "M",
    "CM",
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I"
  ];

  final value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
  String val = "";

  for (int i = 0; i < list.length; i++) {
    while (num >= value[i]) {
      val = val + list[i];
      num = num - value[i];
    }
  }

  return val;
}
