/*
 Arithmetic Operators, Conditional Statements & Functions
 Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
 bonus based on the following rules:- If the employee has worked for 5 or more years, they get a 10% bonus.- Otherwise, they get a 5% bonus.
 The function should return the bonus amount.
 Then, call the function inside `main()` and print the result.
*/

void main() {
  print('bonus : ${calculateBouns(15000, 5)}');
}

num calculateBouns(int salary, int yearsWorked) {
  num bonus = 0;
  if (yearsWorked >= 5) {
    bonus = salary * 10 / 100;
    return bonus;
  } else {
    bonus = salary * 5 / 100;
    return bonus;
  }
}
