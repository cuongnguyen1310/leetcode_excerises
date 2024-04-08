class Solution {
  String addStrings(String num1, String num2) {
    String ans = '';
    int carry = 0;
    int i = num1.length - 1;
    int j = num2.length - 1;

    while (i >= 0 || j >= 0 || carry != 0) {
      if (i >= 0) carry += int.parse(num1[i--]);
      if (j >= 0) carry += int.parse(num2[j--]);
      ans += (carry % 10).toString();
      carry ~/= 10;
    }

    return ans.split('').reversed.join();
  }
}

void main() {
  Solution solution = Solution();

  String num1 = "11";
  String num2 = "123";
  String sum = solution.addStrings(num1, num2);
  print("Sum of $num1 and $num2: $sum");

  num1 = "456";
  num2 = "77";
  sum = solution.addStrings(num1, num2);
  print("Sum of $num1 and $num2: $sum");

  num1 = "0";
  num2 = "0";
  sum = solution.addStrings(num1, num2);
  print("Sum of $num1 and $num2: $sum");
}
