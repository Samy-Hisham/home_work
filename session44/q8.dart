/*
 Sum of List Elements
 Write a function that takes a list of numbers and returns the sum of all elements.
 Example:
 sumList([1, 2, 3, 4, 5]) -> 15
 */

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  int total = sumList(numbers);
  print('The sum of the list elements is: $total');
}

int sumList(List<int> numbers) {

  return numbers.reduce((a, b) => a + b);
}