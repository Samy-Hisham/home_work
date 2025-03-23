/*#
 Employee Payroll System
 Implement an employee payroll system.
 Create a base Employee class with properties: name, id, and salary.
 Implement a method calculateSalary() in the base class.
 Create two subclasses:- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
 salary based on hours worked
 */

void main() {

  FullTimeEmployee fullTimeEmp = FullTimeEmployee(
    name: 'Samy',
    id: 'F1001',
    salary: 50000,
    bonus: 5000,
  );


  PartTimeEmployee partTimeEmp = PartTimeEmployee(
    name: 'Hany',
    id: 'P2001',
    hoursWorked: 20,
    hourlyRate: 15,
  );

  // Calculate and display salaries
  print('Full-Time Employee Salary: \$${fullTimeEmp.calculateSalary()}');
  print('Part-Time Employee Salary: \$${partTimeEmp.calculateSalary()}');
}
class Employee {
  String name;
  String id;
  double salary;

  Employee({
    required this.name,
    required this.id,
    required this.salary,
  });


  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee({
    required String name,
    required String id,
    required double salary,
    this.bonus = 0,
  }) : super(name: name, id: id, salary: salary);


  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee({
    required String name,
    required String id,
    required this.hoursWorked,
    required this.hourlyRate,
  }) : super(name: name, id: id, salary: 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
