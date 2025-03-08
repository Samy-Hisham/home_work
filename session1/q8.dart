//  What is the difference between the num and double data types in Dart?


/*

num:
- num is an abstract superclass for numeric types in Dart. It can represent both integers and floating-point numbers.
- num is often used when you want a variable to accept either an integer or a double without specifying which one.
 For example:
num value = 42;     // Can be an integer
value = 3.14;      // Can also be a double

- Can be int or double
- General numeric values

double:
- double is a specific type that represents double-precision floating-point numbers. It is used for decimal values.
- You would use double when you specifically need to represent decimal numbers, such as in calculations involving fractions, monetary values, or measurements:

double price = 19.99;
double result = price * 2; // Works with decimal values

- Only represents decimals
- Specific for floating-point numbers

*/