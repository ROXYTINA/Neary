Map<String, int> analyzeNumbers(List<int> numbers) {
  int sum = numbers.reduce((a, b) => a + b);
  int min = numbers.reduce((a, b) => a < b ? a : b);
  int max = numbers.reduce((a, b) => a > b ? a : b);

  return {
    'sum': sum,
    'min': min,
    'max': max,
  };
}

void main() {
  List<int> nums = [4, 8, 2, 10, 6];

  var result = analyzeNumbers(nums);

  print(result);
}