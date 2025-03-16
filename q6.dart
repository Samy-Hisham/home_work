/**
 *  Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
 and remove entries from the map, printing the map after each operation.- Task 2: Iterate over the map and print each key-value pair.
 * 
 */

void main() {
  Map<String, dynamic> student = {'name': 'John Doe', 'age': 20, 'grade': 'A'};

  print('Initial student data: $student');

  student['major'] = 'Computer Science';
  print('After adding major: $student');

  student['age'] = 21;
  print('After updating age: $student');

  student.remove('grade');
  print('After removing grade: $student');

  print('Student details:');
  student.forEach((key, value) {
    print('$key: $value');
  });
}
