int findLongestSequenceOfZeros(List<int> numbers) {
  int maxLength = 0;
  int currentLength = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 0) {
      currentLength++;
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    } else {
      currentLength = 0;
    }
  }

  return maxLength;
}

void main() {
  List<int> numbers = [1, 3, 0, 4, 0, 0];
  int longestSequence = findLongestSequenceOfZeros(numbers);
  print("Độ dài của chuỗi số 0 liền nhau dài nhất là: $longestSequence");
}
