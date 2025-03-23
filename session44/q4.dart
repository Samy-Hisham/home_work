/*
 Find Prime Numbers in a Range
 Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
 them.
 Ensure that the function correctly identifies prime numbers and handles edge cases where start is
 greater than end
 */


void main() {
  int start = 5; 
  int end = 10;

  try {
    List<int> primes = findPrimeNumbersInRange(start, end);
    print('Prime numbers between $start and $end: $primes');
  } catch (e) {
    print('Error: $e');
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

List<int> findPrimeNumbersInRange(int start, int end) {

  if (start > end) {
    throw ArgumentError('Start should be less than or equal to end.');
  }

  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}