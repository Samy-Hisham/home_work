/*
 Reverse a String
 Write a function that takes a string as input and returns the string reversed.
Programming Exercises
 Example:
 reverseString('hello') -> 'olleh
 */


void main() {

  String originalString = 'hello';

  String reversedString = reverseString(originalString);
  print('Original string: $originalString');
  print('Reversed string: $reversedString');
}

String reverseString(String input) {

  return input.split('').reversed.join('');
}