/* 
Create a class `Person` with the following attributes:
- `String name`- `int? age` (nullable)- `bool isStudent` (default is false)
 Implement:
 - A constructor that initializes `name` and `age`.
 - A method `displayInfo()` that prints the person's details.
 In `main()`, create an instance of `Person` and call `displayInfo()`
 */

void main() {
  Person person = Person(name: 'samy', age: 25);

  person.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;

  Person({required this.name, this.age, this.isStudent = false});

  void displayInfo() {
    String ageDisplay = age != null ? age.toString() : 'error';
    print('Name: $name');
    print('Age: $ageDisplay');
    print('Is Student: ${isStudent ? 'Yes' : 'No'}');
  }
}
