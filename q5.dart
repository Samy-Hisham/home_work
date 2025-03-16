/**
 *  Create a class with a few properties and methods. Instantiate the class and use the dot operator to
 access and print its properties and methods.
 * 
 */

void main() {
  Person person1 = Person('Alice', 30);

  print('Name: ${person1.name}');
  print('Age: ${person1.age}');

  person1.greet();
  person1.haveBirthday();
}

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to print a greeting
  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }

  // Method to increment age
  void haveBirthday() {
    age++;
    print('$name just had a birthday! They are now $age years old.');
  }
}
