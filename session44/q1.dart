/*
 Basic Arithmetic Calculator
 Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
 Handle cases where division by zero might occur
 */

void main() {
  print(calculate(10, 10, '*'));
}

num calculate(num num1, num num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        print('error');
      }
      return num1 / num2;
    default:
      return 0;
  }
}
