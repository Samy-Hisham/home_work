//  Given this code, identify any errors and explain why they occur: ```void main(){ String name = "Alice"; name = 123; print(name); }

/*

error:
The line name = 123; tries to assign an integer (123) to the variable name, which is declared as a String.

error msg:
A value of type 'int' can't be assigned to a variable of type 'String'.
Try changing the type of the variable, or casting the right-hand type to 'String'.

explain:
In Dart, when you declare a variable with a specific type (in this case, String), that variable is restricted to holding values of that type.

How to Fix the Error:

1- Keeping it a String:
void main() {
  String name = "Alice";
  // Assign a string to name
  name = "samy"; 
  print(name);
}

2- Using Dynamic Type:
If you want name to hold values of different types, you can declare it as dynamic:
void main() {
  dynamic name = "Alice"; // Now name can hold any type
  name = 123;             // This is now valid
  print(name);
}

i see first solution is the best because dynimc is :
 -Increased Memory Usage.
 Performance Overhead.
*/
