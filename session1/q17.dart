//  if you need a variable that can hold any type of value and may change during execution, which data type would you use? Write a code example to show this.
/*
if you need a variable that can hold any type of value and may change during execution, you can use the dynamic type.
 The dynamic type allows a variable to hold values of any type
*/

void main() {
  dynamic variable = 1;
  print(variable);

  variable = 'samy';
  print(variable);

  variable = 10.5;
  print(variable);

  variable = true;
  print(variable);
}
