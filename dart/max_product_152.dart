import 'dart:math' as Math;

void main() {
  final resp = maxProduct([2, 3, -2, -5, 6, -1, 4]);
  print(resp);
}

int maxProduct(List<int> nums) {
  int lP = 1;
  int rP = 1;

  int ans = nums[0];

  for (int i = 0; i < nums.length; i++) {
    lP = lP == 0 ? 1 : lP;
    rP = rP == 0 ? 1 : rP;

    lP = lP * nums[i];
    rP = rP * nums[nums.length - 1 - i];

    ans = Math.max(ans, Math.max(lP, rP));
    // print(' $i $ans $lP $rP');
  }

  return ans;
}
