void main() {
  final resp = maxArea(5);
  print(resp);
}

int maxArea(int n) {
  List<int> dp = [];
  dp.add(1);
  dp.add(1);

  for (var i = 2; i <= n; i++) {
    dp.add(dp[i - 1] + dp[i - 2]);
  }

  return dp[n];
}
