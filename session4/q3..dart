/* 
 3. Lists, Loops & If Conditions
 Create a list of numbers. Iterate over the list and:
 - If a number is even, print "Even: <number>".
 - If a number is odd, print "Odd: <number>"
 */

void main() {
  List<num> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  numbers.forEach((number) {
    if (number % 2 == 0) {
      print('number is even');
    } else {
      print('number is odd');
    }
  });
}
