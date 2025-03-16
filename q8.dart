/**
 * 
 *  Write a Dart program that checks if a number is within a specified range using logical operators and
 prints the result
 */

import 'dart:io';

void main() {
  int lowerBound = 10;
  int upperBound = 20;

  print('Please enter a number:');

  String? input = stdin.readLineSync();

  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print('Invalid input. Please enter a valid integer.');
  } else {
    if (number >= lowerBound && number <= upperBound) {
      print(
        'The number $number is within the range [$lowerBound, $upperBound].',
      );
    } else {
      print(
        'The number $number is outside the range [$lowerBound, $upperBound].',
      );
    }
  }
}
