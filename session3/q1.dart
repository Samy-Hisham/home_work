/**
 *  1. Basic Calculator:
 Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers)
 */
import 'dart:io';

void main() {
  print('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('add = ${add(num1, num2)}');
  print('sub = ${sub(num1, num2)}');
  print('mul = ${mul(num1, num2)}');
  print('div = ${div(num1, num2)}');
}

num add([num num1 = 0, num2 = 0]) {
  num total = num1 + num2;
  return total;
}

num mul([num num1 = 0, num2 = 0]) {
  num total = num1 * num2;
  return total;
}

num sub([num num1 = 0, num2 = 0]) {
  num total = num1 - num2;
  return total;
}

num div([num num1 = 0, num2 = 0]) {
  num total = 0;

  if (num2 == 0) {
    print("can't div by zero");
  } else {
    total = num1 / num2;
  }
  return total;
}
