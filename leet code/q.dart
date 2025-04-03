// two some task
void main() {
  List<num> numbers = [3, 3];

  int target = 6;

  print(twoNum(numbers: numbers, target: target));
}

List<int> twoNum({required List<num> numbers, required int target}) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] + numbers[i + 1] == target) {
      return [i, i + 1];
    }
    return [];
  }
  return [];
}
